class Solution {
    func splitNum(_ num: Int) -> Int {
        var nums = Array(String(num))
        nums.sort { $0.wholeNumberValue! < $1.wholeNumberValue! }
        var num1 = ""
        var num2 = ""

        for (i, num) in nums.enumerated() {
            if i % 2 == 0 {
                num1.append(num)
            } else {
                num2.append(num)
            }
        }

        return Int(num1)! + Int(num2)!
    }
}
