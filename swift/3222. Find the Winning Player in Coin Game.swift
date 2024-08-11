class Solution {
    func losingPlayer(_ x: Int, _ y: Int) -> String {
        let xTimes = x
        let yTimes = y / 4
        return min(xTimes,yTimes) % 2 == 0 ? "Bob" : "Alice"

    }
}
