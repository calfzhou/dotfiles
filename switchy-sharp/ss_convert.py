#!/usr/bin/env python2
# -*- coding: utf-8 -*-
from __future__ import unicode_literals
import argparse
import json
import sys

__version__ = '0.1.0'


def encode_switchy_sharp(json_text):
    """
    :type json_text: string
    :rtype string
    """
    data = json.loads(json_text, encoding='utf-8')
    raw_data = {key: json.dumps(value, encoding='utf-8', sort_keys=True) for key, value in data.iteritems()}
    raw_json_text = json.dumps(raw_data, encoding='utf-8', sort_keys=True)
    return raw_json_text.encode('base64')


def decode_switchy_sharp(backup_text):
    """
    :type backup_text: string
    :rtype string
    """
    raw_json_text = backup_text.decode('base64')
    raw_data = json.loads(raw_json_text, encoding='utf-8')
    data = {key: json.loads(value, encoding='utf-8') for key, value in raw_data.iteritems()}
    return '{}\n'.format(
        json.dumps(data, indent=4, separators=(',', ': '), sort_keys=True)
    )


def _guess_if_json(text):
    """
    :type text: string
    :rtype bool
    """
    try:
        json.loads(text, encoding='utf-8')
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

    unicode_args = map(lambda s: unicode(s, sys.getfilesystemencoding()), sys.argv)
    args = parser.parse_args(unicode_args[1:])

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
