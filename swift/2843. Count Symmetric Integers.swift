class Solution {
    func countSymmetricIntegers(_ low: Int, _ high: Int) -> Int {
        var total = 0

        for var num in low...high {
            let count = String(num).count
            guard count % 2 == 0 else { continue }
            var sum1 = 0
            var sum2 = 0
            var halfCount = count / 2
            while num > 0 {
                if halfCount <= 0 {
                    sum2 += num % 10
                }  else {
                    sum1 += num % 10
                    halfCount -= 1
                }
                num /= 10
            }

            if sum1 == sum2 { total += 1 }
        }
        
        return total
    }
}
