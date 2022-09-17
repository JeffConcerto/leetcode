// Method 1
class Solution {
    func isSumEqual(_ firstWord: String, _ secondWord: String, _ targetWord: String) -> Bool {
        let alphabet = "abcdefghijklmnopqrstuvwxyz"
        var alphaMap = [Character:Int]()
        
        var index = 0
        for char in alphabet {
            alphaMap[char] = index
            index += 1
        }
        
        var firstWordNum = 0
        for char in firstWord {
            firstWordNum *= 10
            firstWordNum += alphaMap[char]!
        }
        
        var secondWordNum = 0
        for char in secondWord {
            secondWordNum *= 10
            secondWordNum += alphaMap[char]!
        }
        
        var targetWordNum = 0
        for char in targetWord {
            targetWordNum *= 10
            targetWordNum += alphaMap[char]!
        }
        
        return firstWordNum + secondWordNum == targetWordNum
    }
 }

// Method 2
class Solution {
    func isSumEqual(_ firstWord: String, _ secondWord: String, _ targetWord: String) -> Bool {
        let alphabet = "abcdefghijklmnopqrstuvwxyz"
        var alphaMap = [Character:Int]()
        
        var index = 0
        for char in alphabet {
            alphaMap[char] = index
            index += 1
        }
        
        let firstNum = getNumber(from: firstWord, using: alphaMap)
        let secondNum = getNumber(from: secondWord, using: alphaMap)
        let targetNum = getNumber(from: targetWord, using: alphaMap)

        return firstNum + secondNum == targetNum
        
    }
    
    func getNumber(from word: String, using map: [Character:Int]) -> Int {
        var num = 0
          for char in word {
            num *= 10
            num += map[char]!
        }
        return num
    }
}
