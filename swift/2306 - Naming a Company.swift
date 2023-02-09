// Solution adpated from protodimbo:
class Solution {
    func distinctNames(_ ideas: [String]) -> Int {
       var suffixMap = [Character: Set<String>]()

       for idea in ideas {
           let word = Array(idea)
           suffixMap[word[0], default: []].insert(String(word[1..<word.count]))
       }

       var validCount = 0

       for char1 in suffixMap.keys {
           for char2 in suffixMap.keys {
               guard char1 != char2 else { continue }
               var matches = 0
               for suffix in suffixMap[char1]! {
                   if suffixMap[char2]!.contains(suffix) { matches += 1 }
               }
                let distinct1 = suffixMap[char1]!.count - matches
                let distinct2 = suffixMap[char2]!.count - matches
                validCount += distinct1 * distinct2
           }
       }

       return validCount
    }
}


// Brute Force, Too Slow:
class Solution {
    func distinctNames(_ ideas: [String]) -> Int {
        let ideaSet = Set(ideas)
        var validCount = 0

        for i in 0..<ideas.count-1 {
            var idea1 = Array(ideas[i])
            for j in i+1..<ideas.count {
                var idea2 = Array(ideas[j])
                let idea1FirstLetter = idea1[0]
                idea1[0] = idea2[0]
                idea2[0] = idea1FirstLetter
                if !ideaSet.contains(String(idea1)) && !ideaSet.contains(String(idea2)) {
                    validCount += 2
                }
                idea1[0] = idea1FirstLetter
            }
        }

        return validCount
    }
}
