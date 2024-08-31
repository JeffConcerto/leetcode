// New Solution:
class Solution {
    func maxDepth(_ s: String) -> Int {
        var leftParentheses = 0
        var maxi = 0

        for char in s {
            if char == "(" {
                leftParentheses += 1
            } else if char == ")" {
                leftParentheses -= 1
            }
            maxi = max(leftParentheses, maxi)
        }

        return maxi
    }
}

// Old Solution:
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
