class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var result = [[Int]]()
         helper(candidates, target, [], &result)
       
        return result
    }
    
    private func helper(_ candidates: [Int], _ target: Int, _ selected: [Int], _ result: inout [[Int]]) {
        guard target > 0 else {
            if target < 0 { return }
            result.append(selected)
            return
        }
        
        guard !candidates.isEmpty else { return }
        
        helper(candidates, target - candidates[0], selected + [candidates[0]], &result)
        helper(Array(candidates[1..<candidates.count]), target, selected, &result)
    }
}
