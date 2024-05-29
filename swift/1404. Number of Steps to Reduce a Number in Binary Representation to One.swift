class Solution {
    func numSteps(_ s: String) -> Int {
        var moves = 0
        var s = Array(s)
        while s.count != 1 && s != ["1"] {
            print(s)
            if s.last! == "1" {
                // odd, add 1:
                s = add1(s)
            } else {
                // even, divide by 2:
                s.removeLast()
            }
            moves += 1
        }

        return moves
    }

    func add1(_ string: [Character]) -> [Character] {
        var remainder = "1"
        var string = string
        for i in 0..<string.count {
            if string[string.count-1-i] == "0" {
                string[string.count-1-i] = "1"
                return string
            } else {
                string[string.count-1-i] = "0"
            }
        }
        return ["1"] + string
    }

   
}
