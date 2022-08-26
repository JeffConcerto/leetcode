class Solution {
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        let array = Array(s)
        var result = array
        
        for (index, value) in indices.enumerated() {
            result[value] = array[index]
        }
        
        return String(result)    
    }
}
