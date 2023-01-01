class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
       var goodPairCount = 0
        
        for i in 0..<nums.count {
            for j in i + 1..<nums.count {
                if nums[i] == nums[j] { goodPairCount += 1 }
            }
        }
        
        return goodPairCount
    }
}

// METHOD 2:
class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var hash = [Int: Int]()

        for i in 0..<nums.count {
            hash[nums[i], default: -1] += 1
        }

        return hash.values.map {factorial($0)}.reduce(0, +)
    }

    private func factorial(_ n: Int) -> Int {
        var n = n
        var sum = 0
        while n > 0 {
            sum += n
            n -= 1
        }
        return sum
    }
}
