// Method 1:
class Solution {
    let morseCode = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
    let valueOfCharA = Int(Character("a").asciiValue!)
    
    func uniqueMorseRepresentations(_ words: [String]) -> Int {
        var set: Set<String> = []
        
        for word in words {
            set.insert(transform(word))
        }
        
        return set.count
    }
    
    private func transform(_ word: String) -> String {
        var result = ""
        
        for char in word {
            result.append(morseCode[getAlphabetPosition(for: char)])
        }
        
        return result
    }
    
    private func getAlphabetPosition(for char: Character) -> Int {
        let asciiValue = Int(char.asciiValue!)
        
        return asciiValue - valueOfCharA
    }
}


// METHOD 2:
class Solution {
    func uniqueMorseRepresentations(_ words: [String]) -> Int {
        let morseCode = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
        let alphabet = ["a","b","c","d","e", "f", "g", "h", "i", "j", "k", "l", "m","n","o","p","q", "r", "s", "t","u", "v", "w", "x", "y", "z"]
        
        var result = Set<String>()
        
        for word in words {
            var code = ""
            for letter in word {
                let index = alphabet.firstIndex(of: String(letter))!
                code.append(morseCode[index])
            }
            result.insert(code)
        }
        
        return result.count
    }
}
