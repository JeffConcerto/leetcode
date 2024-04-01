class Solution {
    func sumOfTheDigitsOfHarshadNumber(_ x: Int) -> Int {
        var sum = 0
        var copyX = x

        while copyX > 0 {
            sum += copyX % 10
            copyX /= 10
        }

        return x % sum == 0 ? sum : -1
    }
}
