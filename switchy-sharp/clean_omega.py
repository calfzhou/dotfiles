#!/usr/bin/env python
# -*- coding: utf-8 -*-
from __future__ import unicode_literals
import argparse
import json
import sys

__version__ = '0.1.0'


def decode_switchy_omega(backup_text):
    """
    :type backup_text: unicode
    :rtype: unicode
    """
    data = json.loads(backup_text, encoding='utf-8')
    return json.dumps(data, indent=4, separators=(',', ': '), sort_keys=True)


def main():
    parser = argparse.ArgumentParser(
        description='Clean SwitchyOmega settings backup file (.bak) to well formatted JSON (.json) file.')
    parser.add_argument('in_file', nargs='?', type=argparse.FileType('r'), default=sys.stdin,
                        help='input file (default: stdin)')
    parser.add_argument('out_file', nargs='?', type=argparse.FileType('w'), default=sys.stdout,
                        help='output file (default: stdout)')
    parser.add_argument('-v', '--version', action='version', version=__version__)

    unicode_args = map(lambda s: unicode(s, sys.getfilesystemencoding()), sys.argv)
    args = parser.parse_args(unicode_args[1:])

    try:
        input_text = args.in_file.read()
        output_text = decode_switchy_omega(input_text)
        args.out_file.write(output_text)
    finally:
        args.out_file.close()
        args.in_file.close()


if __name__ == '__main__':
    main()
