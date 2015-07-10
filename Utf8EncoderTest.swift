/*
 * Bytes | First Code Point | Last Code Point
 * 1       U+0000             U+007F
 * 2       U+0080             U+07FF
 * 3       U+0800             U+FFFF
 * 4       U+10000            U+1FFFFF (Unicode ends at U+10FFFF)
 */

var encoder = Utf8Encoder()

assert(encoder.encode(0x000000) == [0x00])
assert(encoder.encode(0x000024) == [0x24])
assert(encoder.encode(0x00007f) == [0x7f])

assert(encoder.encode(0x000080) == [0xc2, 0x80])
assert(encoder.encode(0x0000a2) == [0xc2, 0xa2])
assert(encoder.encode(0x0007ff) == [0xdf, 0xbf])

assert(encoder.encode(0x000800) == [0xe0, 0xa0, 0x80])
assert(encoder.encode(0x0020ac) == [0xe2, 0x82, 0xac])
assert(encoder.encode(0x00ffff) == [0xef, 0xbf, 0xbf])

assert(encoder.encode(0x010000) == [0xf0, 0x90, 0x80, 0x84])
assert(encoder.encode(0x024b62) == [0xf0, 0xa4, 0xad, 0xa2])
assert(encoder.encode(0x10ffff) == [0xf4, 0x8f, 0xbf, 0xbf])
