class Solution {
    func removeTrailingZeros(_ num: String) -> String {
        var num = Array(num)

        while !num.isEmpty && num.last! == "0" {
            num.removeLast()
        }

        return String(num)
    }
}
