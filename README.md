# UTF-8 and UTF-16 Transcoders in Swift

Implementations of UTF-8 and UTF-16 encodings in Swift. The `Utf8Decoder` class converts a stream of UTF-8 code units to some Unicode code points. The `Utf8Encoder` class converts an Unicode code point to one or more UTF-8 code units. Similarly, the `Utf16Decoder` class converts a stream of UTF-16 code units to some Unicode code points. The `Utf16Encoder` class converts an Unicode code point to one or more UTF-8 code units.

## API

* `Utf8Decoder.decode(codeUnit: Int)`

   Convert the given UTF-8 code unit to an Unicode code point. If there isn't enough code units yet, null is returned.

* `Utf8Decoder.encode(codePoint: Int)`

   Convert the given Unicode code point to one or more UTF-8 code units.

* `Utf16Decoder.decode(codeUnit: Int)`

   Convert the given UTF-16 code unit to an Unicode code point. If there isn't enough code units yet, null is returned.

* `Utf16Decoder.encode(codePoint: Int)`

   Convert the given Unicode code point to one or more UTF-16 code units.

## See Also

* [Unicode Explained](http://shop.oreilly.com/product/9780596101213.do)
* [UTF-8 - Wikipedia](https://en.wikipedia.org/wiki/UTF-8)
* [UTF-16 - Wikipedia](https://en.wikipedia.org/wiki/UTF-16)
