class Solution {
    func finalValueAfterOperations(_ operations: [String]) -> Int {
        var value = 0
        
        for operation in operations {
            if operation.contains("+") {
                value += 1
            } else {
                value -= 1
            }
        }
        
        return value
    }
}
