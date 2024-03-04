class Solution {
    func bagOfTokensScore(_ tokens: [Int], _ power: Int) -> Int {
        // Goal is to FaceUP lowest tokens/least power
        // And FaceDown highest tokens/gainpower
        let tokens = tokens.sorted()
        var faceUp = 0
        var faceDown = tokens.count-1
        var score = 0
        var power = power
        while faceUp <= faceDown {
           if power >= tokens[faceUp] {
               score += 1
               power -= tokens[faceUp]
               faceUp += 1
           } else if faceUp != faceDown && score > 0 {
               score -= 1
               power += tokens[faceDown]
               faceDown -= 1
           } else {
               break
           }
        }

        return score
    }
}
