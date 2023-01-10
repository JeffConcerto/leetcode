class Solution {
    func sortColors(_ nums: inout [Int]) {
        guard nums.count > 1 else { return }

        for i in 0..<nums.count {
              var minIndex = i
              var minNum = nums[i]

              for j in i+1..<nums.count {
                  guard nums[j] < minNum else { continue }
                   minIndex = j
                   minNum = nums[j]
              }

              nums.swapAt(i, minIndex)
        }
        
    }
}
