class Solution {
    func findMatrix(_ nums: [Int]) -> [[Int]] {
       var useCount = [Int:Int]()
       var result = [[Int]]()
       
       for num in nums {
           let row = useCount[num] ?? 0
           if result.count > row {
               result[row].append(num)
           } else {
               result.append([num])
           }
          
            useCount[num,default:0] += 1
       }

       return result
    }
}
