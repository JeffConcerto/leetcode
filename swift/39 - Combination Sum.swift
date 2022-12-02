// First Solution:
class Solution {
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var result: Set<[Int]> = []
         helper(candidates, target, [], &result)
       
        return Array(result)
    }
    
    private func helper(_ candidates: [Int], _ target: Int, _ selected: [Int], _ result: inout Set<[Int]>) {
        guard target > 0 else {
            if target < 0 { return }
            result.insert(selected)
            return
        }
        
        guard !candidates.isEmpty else { return }
        
        helper(Array(candidates[1..<candidates.count]), target - candidates[0], selected + [candidates[0]], &result)
        helper(candidates, target - candidates[0], selected + [candidates[0]], &result)
        helper(Array(candidates[1..<candidates.count]), target, selected, &result)
    }
}
