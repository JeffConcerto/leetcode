class Solution {
    func findErrorNums(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var set = Set<Int>()
        var orig = Set(Array(1...n))
        var dupe = -1

        for num in nums {
            orig.remove(num)
            if set.contains(num) {
                dupe = num
            } else {
                set.insert(num)
            }
        }

        return [dupe,orig.first!]
    }
}

