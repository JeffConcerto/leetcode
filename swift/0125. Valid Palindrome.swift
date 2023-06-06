class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let s = Array(s)
        var newString = [String]()
        for char in s {
            guard char.isLetter || char.isNumber else { continue }
            newString.append(char.lowercased())
        }

        for i in 0..<(newString.count/2) {
            if newString[i] != newString[newString.count-1-i] { return false }
        }

        return true
    }
}
