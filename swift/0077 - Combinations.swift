class Solution {
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        let nums = Array(1...n)
        var result = [[Int]]()
        
        func _combine(_ numsLeft: [Int], _ chosen: [Int]) {
            guard chosen.count != k else { result.append(chosen); return } 
            guard numsLeft.count + chosen.count >= k else { return }

            let nextNumsLeft =  Array(numsLeft[1..<numsLeft.count])
            _combine(nextNumsLeft, chosen)
            
            let nextNum = numsLeft[0]
            var chosen = chosen
            chosen.append(nextNum)
            _combine(nextNumsLeft, chosen)
        }

        for i in 0..<nums.count {
            let numsLeft = Array(nums[i+1..<nums.count])
            _combine(numsLeft, [nums[i]])
        }

        return result
    }
}
