class Solution {
    func isPossibleToSplit(_ nums: [Int]) -> Bool {
       var counter = [Int:Int]()
       for num in nums {
           counter[num, default:0] += 1
           if counter[num]! > 2 { return false }
       }
       return true
    }
}
