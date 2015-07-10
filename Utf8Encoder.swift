class Utf8Encoder {
    private var codeUnits = [Int]()

    func encode(codePoint: Int) -> [Int] {
        codeUnits.removeAll(keepCapacity: true)

        if codePoint <= 0x007f {
            codeUnits.append(codePoint)
        } else if codePoint <= 0x07ff {
            codeUnits.append(codePoint >> 6 | 0xc0)
            codeUnits.append(codePoint & 0x3f | 0x80)
        } else if codePoint <= 0xffff {
            codeUnits.append(codePoint >> 12 | 0xe0)
            codeUnits.append(codePoint >> 6 & 0x3f | 0x80)
            codeUnits.append(codePoint & 0x3f | 0x80)
        } else {
            codeUnits.append(codePoint >> 18 | 0xf0)
            codeUnits.append(codePoint >> 12 & 0x3f | 0x80)
            codeUnits.append(codePoint >> 6 & 0x3f | 0x80)
            codeUnits.append(codePoint & 0x3f | 0x80)
        }

        return codeUnits
    }
}
