class Solution {
    func sortVowels(_ s: String) -> String {
        var vowels = [Character]()
        var indexes = [Int]()

        for (i, char) in s.enumerated() {
            switch char.lowercased() {
                case "a", "e", "i", "o", "u":
                    vowels.append(char)
                    indexes.append(i)
                default:
                    continue 
            }
        }
        vowels.sort()

        var answer = Array(s)
        var j = 0
        for i in indexes {
            answer[i] = vowels[j]
            j += 1
        }

        return String(answer)
    }
}
