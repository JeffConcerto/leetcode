class Solution {
    func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
        var left = 0
        var right = letters.count-1

        while left <= right {
            let middle = left + (right-left)/2

            guard middle < letters.count else { break }

            if target >= letters[middle] {
                left = middle+1
            } else {
                right = middle - 1
            }
        }

        if left >= letters.count || right == -1 {
            return letters[0]
        }

        return letters[left]
    }
}
