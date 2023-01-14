// Needed Some Help to make faster, got idea to memoize:

class Solution {
    func smallestEquivalentString(_ s1: String, _ s2: String, _ baseStr: String) -> String {
        let s1 = Array(s1)
        let s2 = Array(s2)

        var hashMap = [Character: [Character]]()

        for i in 0..<s1.count {
            hashMap[s1[i], default: []].append(s2[i])
            hashMap[s2[i], default: []].append(s1[i])
        }
        var result = ""
        var memo = [Character: Character]()

        for char in baseStr {
            if hashMap[char] != nil {
                result.append(getSmallestChar(char, hashMap, &memo))
            } else {
                result.append(char)
            }
        }


        return result
    }

    private func getSmallestChar(_ key: Character, _ map: [Character: [Character]], _ memo: inout [Character: Character]) -> Character {
        guard memo[key] == nil else { return memo[key]! }
        var seen: Set<Character> = []
        var charsToSee = map[key]!
        var minChar = charsToSee[0]

        while !charsToSee.isEmpty {
            let currentChar = charsToSee.removeFirst()
            guard !seen.contains(currentChar) else { continue }
            seen.insert(currentChar)
            minChar = min(minChar, currentChar)

            for char in map[currentChar]! {
                charsToSee.append(char)
            }
        }

        memo[key] = minChar
        return minChar       
    }
}
