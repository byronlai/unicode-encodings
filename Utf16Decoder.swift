class Utf16Decoder {
    private var hasLeadSurrogate = false
    private var leadSurrogate = 0

    func decode(codeUnit: Int) -> Int? {
        if codeUnit < 0xd800 || codeUnit > 0xdfff {
            return codeUnit
        }

        if !hasLeadSurrogate {
            hasLeadSurrogate = true
            leadSurrogate = codeUnit
            return nil
        }

        hasLeadSurrogate = false
        return (leadSurrogate - 0xd7c0) << 10 | (codeUnit - 0xdc00)
    }
}
