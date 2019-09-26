#!/usr/bin/env python3
import argparse
import binascii
import struct


def char_to_symbol(c: str) -> int:
    assert(len(c) == 1 and len(c) == 1)
    if c >= 'a' and c <= 'z':
        return ord(c) - ord('a') + 6
    if c >= '1' and c <= '5':
        return ord(c) - ord('1') + 1
    return 0


def name_to_string(num: int) -> str:
    charmap = '.12345abcdefghijklmnopqrstuvwxyz'
    str_buf = ['.'] * 13
    temp = num

    for i in range(13):
        c = charmap[temp & (i == 0 and 0x0f or 0x1f)]
        str_buf[12 - i] = c
        temp >>= (i == 0 and 4 or 5)

    return ''.join(str_buf).rstrip('.')


def string_to_name(text: str) -> int:
    value = 0
    for i in range(13):
        c = 0
        if i < len(text) and i <= 12:
            c = char_to_symbol(text[i])

        if i < 12:
            c &= 0x1f
            c <<= 64 - 5 * (i + 1)
        else:
            c &= 0x0f

        value |= c

    return value


def string_to_symbol(text: str) -> int:
    parts = text.split(',', 1)
    if len(parts) == 1:
        precision = 0
        text = parts[0]
    else:
        precision = int(parts[0])
        text = parts[1]

    result = 0
    for i, c in enumerate(text):
        assert('A' <= c <= 'Z')
        result |= ord(c) << (8 * (i + 1))

    result |= precision
    return result


def symbol_to_string(value: int) -> str:
    buffer = []
    precision = value & 0xff;
    buffer.append(str(precision))
    buffer.append(',')
    value >>= 8
    for _i in range(8):
        if (value & 0xff) == 0:
            break

        c = chr(value & 0xff)
        buffer.append(c)
        value >>= 8

    return ''.join(buffer)


def format_number(value: int, is_hex: bool = False, is_little: bool = False) -> str:
    if is_little:
        value = int(binascii.hexlify(struct.pack('<Q', value)), 16)
    if is_hex:
        value = '0x' + hex(value)[2:].zfill(16)
    return value


def parse_number(text: str, is_hex: bool = False, is_little: bool = False) -> int:
    value = is_hex and int(text, 16) or int(text)
    if is_little:
        value = int(binascii.hexlify(struct.pack('<Q', value)), 16)
    return value


def main():
    parser = argparse.ArgumentParser(description='EOS Name and Symbol Converter')
    parser.add_argument('kind', choices=('name', 'symbol'), help='which kind of item to convert')
    parser.add_argument('action', choices=('encode', 'decode'), help='which way to convert')
    parser.add_argument('value', help='the value to convert')
    parser.add_argument('--hex', action='store_true', help='number is in hex mode')
    parser.add_argument('-l', '--little', action='store_true', help='number is in little endian byte order')

    args = parser.parse_args()
    # print(args)

    if args.action == 'encode':
        action = (args.kind == 'name') and string_to_name or string_to_symbol
        result = action(args.value)
        result = format_number(result, args.hex, args.little)
    elif args.action == 'decode':
        action = (args.kind == 'name') and name_to_string or symbol_to_string
        value = parse_number(args.value, args.hex, args.little)
        result = action(value)

    print(result)


if __name__ == '__main__':
    main()
