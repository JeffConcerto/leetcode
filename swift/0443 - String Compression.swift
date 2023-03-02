class Solution {
    func compress(_ chars: inout [Character]) -> Int {
        var letterCurrent = chars.first!
        var letterCount = 1
        var writeIndex = 0

        for i in 1..<chars.count {
            // If letters match keep going:
            guard chars[i] != letterCurrent else {
               letterCount += 1
                continue
            }
            // If letters do not match:
             chars[writeIndex] = letterCurrent
             writeIndex += 1

            if letterCount > 1 {
                let number = String(letterCount)
                for char in number {
                    chars[writeIndex] = char
                    writeIndex += 1
                }
                // writeIndex += 1
            } else {
                // LetterCount == 1, so proceed:
                // writeIndex += 1
            }

            letterCurrent = chars[i]
            letterCount = 1
        }

        if letterCount > 1 {
            chars[writeIndex] = letterCurrent
            writeIndex += 1
            let number = String(letterCount)
            for char in number {
                chars[writeIndex] = char
                writeIndex += 1
            }
        } else {
             chars[writeIndex] = letterCurrent
             writeIndex += 1
        }

        let lettersToRemove = chars.count - writeIndex

        for _ in 0..<lettersToRemove {
            chars.removeLast()
        }
        return chars.count
    }
}
