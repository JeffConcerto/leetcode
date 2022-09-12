class Solution {
    func numDifferentIntegers(_ word: String) -> Int {
        var currentString = ""
        var set: Set<String> = []
        
        for char in word {
            if let num = char.wholeNumberValue {
                currentString.append(char)
            } else {
                if !currentString.isEmpty {
                    while currentString.hasPrefix("0") && currentString.count > 1 {
                        currentString.remove(at: currentString.startIndex)
                    }
                    set.insert(currentString)
                    currentString = ""
                }
            }
        }
        
        if !currentString.isEmpty {
            while currentString.hasPrefix("0") && currentString.count > 1 {
                currentString.remove(at: currentString.startIndex)
            }
            set.insert(currentString)
        }
        
        return set.count
    }
}
