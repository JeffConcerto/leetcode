class Solution {
    func removeOuterParentheses(_ s: String) -> String {
        var inner = 0
        var stack = [Character]()
        for char in s {
            if inner > 0 {
                stack.append(char)
            }
            inner += char == "(" ? 1 : -1
            if inner == 0 {
                stack.removeLast()
            }
        }

        return String(stack)
    }
}
