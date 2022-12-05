// Method 1:

class Solution {
    func checkIfPangram(_ sentence: String) -> Bool {
        var set: Set<Character> = Set(Array("abcdefghijklmnopqrstuvwyxz"))

        for char in sentence {
            if set.contains(char) {
                set.remove(char)
            }
        }
        
        return set.isEmpty
    }
}

// Method 2:
class Solution {
    func checkIfPangram(_ sentence: String) -> Bool {
        var hash = [Character:Bool]()
        
        for character in sentence {
            hash[character] = true
        }
        
        return hash.count == 26
    }
}

// Method 3:
class Solution {
    func checkIfPangram(_ sentence: String) -> Bool {
        var set: Set<Character> = []
        
        for character in sentence {
            set.insert(character)
        }
        
        return set.count == 26
    }
}
