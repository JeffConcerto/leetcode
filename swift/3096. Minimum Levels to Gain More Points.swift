class Solution {
    func minimumLevels(_ possible: [Int]) -> Int {
        var prefix = [0]
        for level in possible {
            let score = prefix.last! + (level == 1 ? 1 : -1)
            prefix.append(score)
        }

        var postfix = [0]
        for level in possible.reversed() {
            let score = postfix.last! + (level == 1 ? 1 : -1)
            postfix.append(score)
        }

        postfix = postfix.reversed()

        for i in 1..<prefix.count-1 {
            if prefix[i] > postfix[i] { return i }
        }

        return -1
    }
}
