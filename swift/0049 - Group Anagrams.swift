// Solution #1:
class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var collection = [[Character: Int]: [String]]()

        for string in strs {
            let hash = generateCharCount(for: string)
            collection[hash, default: []].append(string)
        }

        var answer = [[String]]()

        for (_, value) in collection {
            answer.append(value)
        }

        return answer
    }

    private func generateCharCount(for string: String) -> [Character:Int] {
        var hashCount = [Character: Int]()

        for char in string {
            hashCount[char, default: 0] += 1
        }

        return hashCount
    }
}

// Solution #2
class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var anagramMap = [[Character:Int]: [String]]()
        
        for string in strs {
            var map = [Character: Int]()
            for char in string {
                map[char, default: 0] += 1
            }
            anagramMap[map, default: []].append(string)
        }

        return Array(anagramMap.values)
    }
}
