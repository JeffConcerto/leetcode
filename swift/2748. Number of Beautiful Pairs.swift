class Solution {
    func countBeautifulPairs(_ nums: [Int]) -> Int {
        var firstDigits = [Int]()
        var lastDigits = [Int]()
        for var num in nums {
            lastDigits.append(num % 10)
            while num > 9 {
                num /= 10
            }
            firstDigits.append(num)
        }
       
        var pairs = 0
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if gcd(firstDigits[i],lastDigits[j]) == 1 { pairs += 1}
            }
        }

        return pairs
    }

    private func gcd(_ x: Int, _ y: Int) -> Int {
        if y == 0 { return x }
        return gcd(y, x % y)
    }
}
