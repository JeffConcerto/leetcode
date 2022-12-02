class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var result = [[Int]]()
         helper(candidates, target, [], &result)
       
        return result
    }
    
    private func helper(_ candidates: [Int], _ target: Int, _ selected: [Int], _ result: inout [[Int]]) {
        guard !candidates.isEmpty && target >= 0 else { return }
        
         if target == 0 {
            result.append(selected)
        } else {
            helper(candidates, target - candidates[0], selected + [candidates[0]], &result)
            helper(Array(candidates[1..<candidates.count]), target, selected, &result)
        }
    }
}
