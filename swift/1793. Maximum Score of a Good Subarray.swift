class Solution {
    func maximumScore(_ nums: [Int], _ k: Int) -> Int {
        var i = k
        var j = k

        var maxGood = Int.min
        var minVal = Int.max

        while i > -1 && j < nums.count {
          minVal = min(minVal, nums[i], nums[j])
          maxGood = max(maxGood, minVal * (j-i+1))

          let nextI = i > 0 ? nums[i-1] : -10_000_000
          let nextJ = j < nums.count-1 ? nums[j+1] : -10_000_000

          if nextI >= nextJ {
            i -= 1
          } else {
            j += 1
          }

         
        }
      

        return maxGood
    }
}
