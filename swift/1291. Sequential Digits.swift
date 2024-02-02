class Solution {
  func sequentialDigits(_ low: Int, _ high: Int) -> [Int] {
      var result = [Int]()
      
      func dfs(_ num: Int, _ i: Int) {
          if num > high || i > 9 { return }
          if num >= low && num <= high {
              result.append(num)
          }
          dfs(num*10+i+1, i+1)
      }

      

      for digit in 1...9 {
          dfs(digit, digit)
      }

      return result.sorted()
  }
}
