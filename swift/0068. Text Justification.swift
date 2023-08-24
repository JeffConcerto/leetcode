class Solution {
    func fullJustify(_ words: [String], _ maxWidth: Int) -> [String] {
        var result = [String]()
        var index = 0
        while index < words.count {
            var charCount = 0
            var wordCount = 0

            for i in index..<words.count {
                if charCount + wordCount + words[i].count > maxWidth { break }
                charCount += words[i].count
                index = i+1
                wordCount += 1
            }

            let spaces = wordCount == 1 ? 0 : (maxWidth-charCount) / (wordCount-1)
            var remainderSpaces = spaces > 0 ? (maxWidth-charCount) % (wordCount-1) : 0

            var string = ""

            for i in 0..<wordCount {
                string.append(words[index-wordCount+i])

                if index != words.count && i != wordCount-1 {
                    for i in 0..<spaces {
                        string.append(" ")
                    }
                    if remainderSpaces > 0 {
                        string.append(" ")
                        remainderSpaces -= 1
                    }
                } else if index == words.count  && i != wordCount-1 {
                    string.append(" ")
                } else if i == wordCount-1 && string.count < maxWidth {
                    while string.count < maxWidth {
                        string.append(" ")
                    }
                }
            }

            if index == words.count {
                while string.count < maxWidth {
                    string.append(" ")
                }
            }

            result.append(string)
        }

        return result
    }
}
