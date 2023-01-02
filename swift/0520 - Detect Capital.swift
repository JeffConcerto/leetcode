class Solution {
    func detectCapitalUse(_ word: String) -> Bool {
        var count = 0
        let firstLetterIsCapital = word.first!.isUppercase
        for char in word {
            if char.isUppercase {
                count += 1
            }
        }

        return count == word.count || count == 0 || (firstLetterIsCapital && count == 1)
    }
}
