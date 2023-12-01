class Solution {
    func reverseWords(_ s: String) -> String {
        var words = [String]()
        var result = ""
        var currentword = ""
        var endWord = false

        for char in s {
            if char == " " {
                endWord = true
            } else {
                if endWord {
                    endWord = false
                    if !currentword.isEmpty {
                        words.append(currentword)
                        currentword = ""
                    }
                }
                currentword += String(char)
            }
        }
        words.append(currentword)

        for i in stride(from: words.count-1, to: -1, by: -1) {
            result += "\(words[i])"
            if i > 0 {
                result += " "
            }
        }

        return result
    }
}
