#!/usr/bin/env python3
import argparse
import base64
import json
import sys

__version__ = '0.2.0'


def encode_switchy_sharp(json_text):
    data = json.loads(json_text)
    raw_data = {key: json.dumps(value, sort_keys=True) for key, value in data.iteritems()}
    raw_json_text = json.dumps(raw_data, sort_keys=True)
    return raw_json_text.encode('base64')


def decode_switchy_sharp(backup_text):
    raw_json_text = base64.b64decode(backup_text)
    raw_data = json.loads(raw_json_text)
    data = {key: json.loads(value) for key, value in raw_data.items()}
    return '{}\n'.format(
        json.dumps(data, indent=4, separators=(',', ': '), sort_keys=True)
    )


def _guess_if_json(text):
    try:
        json.loads(text)
        return True
    except ValueError:
        return False


def main():
    parser = argparse.ArgumentParser(
        description='Convert between SwitchySharp options backup file (.bak) and well formatted JSON (.json) file.')
    parser.add_argument('in_file', nargs='?', type=argparse.FileType('r'), default=sys.stdin,
                        help='input file (default: stdin)')
    parser.add_argument('out_file', nargs='?', type=argparse.FileType('w'), default=sys.stdout,
                        help='output file (default: stdout)')
    parser.add_argument('-v', '--version', action='version', version=__version__)

    group = parser.add_mutually_exclusive_group()
    group.add_argument('-e', '--encode', action='store_true',
                       help='force run encoding process (by default it is auto determined by input content)')
    group.add_argument('-d', '--decode', action='store_true',
                       help='force run decoding process (by default it is auto determined by input content)')

    args = parser.parse_args()

    try:
        input_text = args.in_file.read()
        if args.encode:
            converter = encode_switchy_sharp
        elif args.decode:
            converter = decode_switchy_sharp
        else:
            converter = encode_switchy_sharp if _guess_if_json(input_text) else decode_switchy_sharp

        output_text = converter(input_text)
        args.out_file.write(output_text)
    finally:
        args.out_file.close()
        args.in_file.close()


if __name__ == '__main__':
    main()
