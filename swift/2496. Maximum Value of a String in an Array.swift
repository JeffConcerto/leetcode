class Solution {
    func maximumValue(_ strs: [String]) -> Int {
        var maxValue = Int.min

        for string in strs {
            maxValue = max(maxValue, getValue(of: string))
        }

        return maxValue
    }

    private func getValue(of string: String) -> Int {
        var string = Array(string)

        var sum = 0

        for char in string {
            guard char.isWholeNumber else { return string.count }
            sum *= 10
            sum += char.wholeNumberValue!
        }

        return sum
     }
     
}
