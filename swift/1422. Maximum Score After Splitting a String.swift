class Solution {
    func maxScore(_ s: String) -> Int {
        let s = Array(s)
        var ones = 0
        var zeros = 0
        var score = Int.min

        for (i, char) in s.enumerated() {
           if char == "0" {
               zeros += 1
           } else {
               ones += 1
           }

           if i < s.count-1 {
               score = max(score, zeros-ones)
           }
       }

       return score + ones

    }
}
