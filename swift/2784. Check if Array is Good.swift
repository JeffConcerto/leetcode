class Solution {
    func isGood(_ nums: [Int]) -> Bool {
        let n = nums.count-1
        if n == 0 { false }
        var baseMap = [Int:Int]()

        for i in 0..<n {
            baseMap[i+1, default:0] += 1 
        }
        
        if let count = baseMap[n] {
            baseMap[n] = count + 1
        }

        var numMap = [Int:Int]()

        for num in nums {
            numMap[num, default:0] += 1
        }

        return numMap == baseMap
    }
}
