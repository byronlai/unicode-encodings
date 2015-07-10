class Utf8Decoder {
    private var codePoint = 0
    private var byteCount = 0

    func decode(codeUnit: Int) -> Int? {
        if codeUnit <= 0x7f {
            return codeUnit
        } else if codeUnit <= 0xbf {
            codePoint = codePoint << 6 | codeUnit & 0x3f
            byteCount--
        } else if codeUnit <= 0xdf {
            codePoint = codeUnit & 0x1f
            byteCount = 1
        } else if codeUnit <= 0xef {
            codePoint = codeUnit & 0x0f
            byteCount = 2
        } else if codeUnit <= 0xf7 {
            codePoint = codeUnit & 0x07
            byteCount = 3
        } else {
            byteCount = -1
        }

        return byteCount == 0 && codePoint <= 0x10ffff ? codePoint : nil
    }
}
