class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var count = 0
        var isNewWord = false
        for char in s {
            guard char != " " else {
                isNewWord = true
                continue
            }
            if isNewWord {
                count = 0
                isNewWord = false
            }
                count += 1
            }

        return count
    }
}
