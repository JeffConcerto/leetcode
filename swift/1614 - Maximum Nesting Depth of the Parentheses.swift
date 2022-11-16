class Solution {
    func maxDepth(_ s: String) -> Int {
        var stack = [Character]()
        var maxParans = 0
        
        for char in s {
            if char == "(" {
                stack.append("(")
            } else if char == ")" {
                stack.removeLast()
            }
            maxParans = max(stack.count, maxParans)
        }
        
        return maxParans
    }
}
