class Solution {
    func convertDateToBinary(_ date: String) -> String {
        let dates = date.components(separatedBy: "-")
        var result = ""
        for date in dates {
            var time = ""
            var num = Int(date)!
            while num > 0 {
                time = String(num % 2) + time
                num /= 2
            }

            result += time + "-"
        }
        result.removeLast()
        return result
    }
}
