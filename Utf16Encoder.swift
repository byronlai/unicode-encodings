class Utf16Encoder {
    private var codeUnits = [Int]()

    func encode(codePoint: Int) -> [Int] {
        codeUnits.removeAll(keepCapacity: true)

        if codePoint <= 0xffff {
            codeUnits.append(codePoint)
        } else {
            codeUnits.append(0xd7c0 + (codePoint >> 10))
            codeUnits.append(0xdc00 + (codePoint & 0x3ff))
        }

        return codeUnits
    }
}
