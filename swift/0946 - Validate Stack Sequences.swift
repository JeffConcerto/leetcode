class Solution {
    func validateStackSequences(_ pushed: [Int], _ popped: [Int]) -> Bool {
        var stack = [Int]()
        var popIndex = 0
        var pushIndex = 0

        while popIndex < popped.count {
            while stack.isEmpty || (stack.last! != popped[popIndex] && pushIndex < pushed.count) {
                stack.append(pushed[pushIndex])
                pushIndex += 1
            }

            if stack.last! == popped[popIndex] {
                stack.removeLast()
                popIndex += 1
            } else {
                return false 
            }
        }

        return true
    }
}
