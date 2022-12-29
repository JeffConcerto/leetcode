class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var hash = [Int: [Int]]()

        for i in 0..<nums.count {
            hash[nums[i], default: []].append(i)
        }
        
        return containsDuplicateWithinRange(hash, k)
    }

    private func containsDuplicateWithinRange(_ hash: [Int:[Int]], _ k: Int) -> Bool {
        for (_, indexArray) in hash {
            guard indexArray.count > 1 else { continue }
            var previous = indexArray[0]
            for i in 1..<indexArray.count {
                if abs(indexArray[i] - previous) <= k { return true }
                previous = indexArray[i]
            }
        }
        
        return false
    }
}
