class Solution {
    func maximumPrimeDifference(_ nums: [Int]) -> Int {
        var left = 0
        var right = nums.count-1
        var foundLeft = false
        var foundRight = false

        while left < right {
            if !foundLeft {
                if isPrime(nums[left]) {
                    foundLeft = true
                } else {
                    left += 1
                }
            }
            
            if !foundRight {
                if isPrime(nums[right]) {
                    foundRight = true
                } else {
                    right -= 1
                }
            }
            
            if foundLeft && foundRight {
                return right-left
            }
        }

        return 0
    }
    private func isPrime(_ num: Int) -> Bool {
        if num == 1 { return false }
        guard num > 3 else { return true }
        let min = Int(sqrt(Double(num)))

        for i in 2...min {
            if num % i == 0 { return false} 
        }
        return true
    }
}
