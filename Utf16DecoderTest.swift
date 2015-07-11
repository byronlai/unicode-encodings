var decoder = Utf16Decoder()

assert(decoder.decode(0x0000) == 0x0000);
assert(decoder.decode(0xffff) == 0xffff);

assert(decoder.decode(0xd834) == nil);
assert(decoder.decode(0xdd1e) == 0x1d11e);
