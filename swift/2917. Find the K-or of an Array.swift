class Solution {
    func findKOr(_ nums: [Int], _ k: Int) -> Int {
        var map = [Int:Int]()
        var powers = [Int]()

        for var num in nums {
            var i = 0
            while num > 0 {
                if num & 1 == 1 {
                    map[i, default:0] += 1
                    if map[i]! == k {
                    powers.append(i)  
                    }
                }
                num >>= 1
                i += 1
            }
        }

        var sum = 0

        for power in powers {
            let num = 1 << power
            sum += num
        }

        return sum
    }
}
