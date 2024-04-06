class Solution {
    func minRemoveToMakeValid(_ s: String) -> String {
        var leftPStack = [Int]()
        var rightPStack = [Int]()

        for (i, char) in s.enumerated() {
            if char == "(" {
                leftPStack.append(i)
            } else if char == ")" {
                if !leftPStack.isEmpty {
                    leftPStack.removeLast()
                } else {
                    rightPStack.append(i)
                }
            } 
        }

        if !leftPStack.isEmpty || !rightPStack.isEmpty {
            let leftRemove = Set(leftPStack)
            let rightRemove = Set(rightPStack)
            var newString = [Character]()
            for (i,char) in s.enumerated() {
                if leftRemove.contains(i) || rightRemove.contains(i) { continue }
                newString.append(char)
            }

            return String(newString)
        }

        return s
    }
}
