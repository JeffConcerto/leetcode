class Solution {
    func candy(_ ratings: [Int]) -> Int {
      var result = Array(repeating: 1, count: ratings.count)

      // Check left:
      for (i, rating) in ratings.enumerated() {
        let left = i > 0 ? ratings[i] > ratings[i-1] ? result[i-1]+1 : 1 : 1
        result[i] = left
      }

      // Check right:
      for i in stride(from:ratings.count-1, to:-1, by: -1) {
           if i < ratings.count-1 {
               if ratings[i] > ratings[i+1] && result[i] <= result[i+1] {
                result[i] = result[i+1] + 1
          }
        }
      }

     return result.reduce(0,+)  
    }
}
