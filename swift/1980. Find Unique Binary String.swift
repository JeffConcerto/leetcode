class Solution {
    func findDifferentBinaryString(_ nums: [String]) -> String {
        let nums = nums.sorted()
        var next = nextNumber(Array(nums[0]))
        for i in 1..<nums.count {
            if next != nums[i] {
                return next
            } else {
                next = nextNumber(Array(nums[i]))
            }
        }

        return next
    }

    private func nextNumber(_ number: [Character]) -> String {
        var result = [Character]()

        var i = number.count-1
        var remainder = 1
        while i >= 0 {
            if number[i] == "0" {
                if remainder == 1 {
                    result.append("1")
                    remainder = 0
                } else {
                    result.append("0")
                }
            } else {
                // = 1
                if remainder == 1 {
                    result.append("0")
                } else {
                    result.append("1")
                }
            }
            i -= 1
        }

        
        if result.count > number.count {
            result.removeLast()
        }
        result = result.reversed()
        return String(result)
    }
}
