// Solution adapated from TigranNeDoDeveloper:

class Solution {    
    func countSubarrays(_ nums: [Int], _ minK: Int, _ maxK: Int) -> Int {
       var count = 0
       var j = -1
       var minIndexPrev = -1
       var maxIndexPrev = -1

       for i in 0..<nums.count {
           // Check if number is out of bounds:
           if nums[i] < minK || nums[i] > maxK {
               j = i
           }

           if nums[i] == minK { minIndexPrev = i }
           if nums[i] == maxK { maxIndexPrev = i }

           let minValue = min(minIndexPrev, maxIndexPrev) - j
           count += max(minValue, 0)
       }

       return count
    }
}
