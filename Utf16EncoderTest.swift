/*
 * Bytes | First Code Point | Last Code Point
 * 1       U+0000             U+FFFF
 * 2       U+010000           U+10FFFF
 */

var encoder = Utf16Encoder()

assert(encoder.encode(0x000000) == [0x0000]);
assert(encoder.encode(0x00ffff) == [0xffff]);

assert(encoder.encode(0x010000) == [0xd800, 0xdc00]);
assert(encoder.encode(0x01d11e) == [0xd834, 0xdd1e]);
assert(encoder.encode(0x10fffd) == [0xdbff, 0xdffd]);
assert(encoder.encode(0x10ffff) == [0xdbff, 0xdfff]);
