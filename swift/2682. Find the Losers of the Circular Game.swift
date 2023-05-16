class Solution {
    func circularGameLosers(_ n: Int, _ k: Int) -> [Int] {
        var didTouchBall = Array(repeating: false, count: n)

        var hasBallIndex = 0
        var passCount = 1

        while didTouchBall[hasBallIndex] != true {
            didTouchBall[hasBallIndex] = true
            hasBallIndex = ((passCount * k) + hasBallIndex) % n 
            passCount += 1
        }

        var result = [Int]()
        for index in 0..<didTouchBall.count {
            if !didTouchBall[index] {
                result.append(index+1)
            }
        }

        return result
    }
}
