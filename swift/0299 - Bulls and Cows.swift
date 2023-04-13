class Solution {
    func getHint(_ secret: String, _ guess: String) -> String {
        let secret = Array(secret)
        let guess = Array(guess)

        var bulls = 0
        var sMap = [Int:Int]()
        var gMap = [Int:Int]()

        // Get bulls:
        for i in 0..<guess.count {
            if guess[i] == secret[i] { 
                bulls += 1
            } else {
                sMap[secret[i].wholeNumberValue!, default: 0] += 1
                gMap[guess[i].wholeNumberValue!, default: 0] += 1
            }
        }

        var cows = 0
        
        // Get cows:
        for (key,value) in sMap {
            if let guessValue = gMap[key] {
                cows += min(guessValue, value)
            }
                
        }

         return String(bulls) + "A" + String(cows) + "B"
    }
}
