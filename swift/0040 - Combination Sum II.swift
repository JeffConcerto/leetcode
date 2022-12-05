class Solution {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var result: Set<[Int]> = []
        var candidates = candidates.sorted()
        let total = candidates.reduce(0,+)
        if total < target { return []}
        if total == target { return [candidates]}
      
        helper(candidates, target, [], &result, total)
        
        return Array(result)
    }
    
    private func helper(_ candidates: [Int], _ target: Int, _ selection: [Int], _ result: inout Set<[Int]>, _ total: Int) {
        guard target != 0 else { result.insert(selection); return }
        guard total >= target else { return }
        guard total != target else {
            let selection = selection + candidates
            result.insert(selection)
            return
        }
        guard !candidates.isEmpty && target > 0 else { return }
                
        var nextIndex = 1
        var total = total
      
        helper(Array(candidates[nextIndex..<candidates.count]), target - candidates[0], selection + [candidates[0]], &result, total - candidates[0])
        
          while nextIndex < candidates.count && candidates[0] == candidates[nextIndex] {
            total -= candidates[nextIndex]
            nextIndex += 1
        }
      
        helper(Array(candidates[nextIndex..<candidates.count]), target, selection, &result, total - candidates[0])
    }
}

// Method 2 - Not tracking total:
class Solution {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var result: Set<[Int]> = []
        var candidates = candidates.sorted()
      
        helper(candidates, target, [], &result)
        
        return Array(result)
    }
    
    private func helper(_ candidates: [Int], _ target: Int, _ selection: [Int], _ result: inout Set<[Int]>) {
        guard target != 0 else { result.insert(selection); return }
        guard !candidates.isEmpty && target >= 0 else { return }
                
        var nextIndex = 1
      
        helper(Array(candidates[nextIndex..<candidates.count]), target - candidates[0], selection + [candidates[0]], &result)
        
          while nextIndex < candidates.count && candidates[0] == candidates[nextIndex] {
            nextIndex += 1
        }
        
        helper(Array(candidates[nextIndex..<candidates.count]), target, selection, &result)
    }
}
