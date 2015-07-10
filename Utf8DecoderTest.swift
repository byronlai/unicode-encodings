var decoder = Utf8Decoder()

assert(decoder.decode(0x7f) == 0x0007f);

assert(decoder.decode(0xc2) == nil);
assert(decoder.decode(0xa2) == 0x000a2);

assert(decoder.decode(0xe2) == nil);
assert(decoder.decode(0x82) == nil);
assert(decoder.decode(0xac) == 0x020ac);

assert(decoder.decode(0xf0) == nil);
assert(decoder.decode(0xa4) == nil);
assert(decoder.decode(0xad) == nil);
assert(decoder.decode(0xa2) == 0x24b62);
