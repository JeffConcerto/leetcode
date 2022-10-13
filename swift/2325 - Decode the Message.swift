class Solution {
    func decodeMessage(_ key: String, _ message: String) -> String {
        let alpha = "abcdefghijklmnopqrstuvwxyz"
        var alphaMap = [Int: Character]()

         for (index, char) in alpha.enumerated() {
            alphaMap[index] = char
        }
        
        var subMap = [Character: Int]()
        
        var index = 0
        
        for char in key {
            if !char.isLetter { continue }
            if subMap[char] == nil {
                subMap[char] = index
                index += 1
            }
        }

        var decodedMessage = ""
        
        for char in message {
            if !char.isLetter { 
                decodedMessage.append(char)
            } else {
              decodedMessage.append(alphaMap[subMap[char]!]!)
            }
        }
        
        return decodedMessage
    }
}
