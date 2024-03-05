class Solution {
    func minimumLength(_ s: String) -> Int {
        let s = Array(s)
        var left = 0
        var right = s.count-1

        while left < right {
            if s[left] != s[right] { break }

            var suffixEnd = right
            while suffixEnd > left && s[right] == s[suffixEnd] {
                suffixEnd -= 1
            }
            if suffixEnd == right { break }
            if suffixEnd == left { return 0 }
            
            var prefixEnd = left
            while prefixEnd < right && s[left] == s[prefixEnd] {
                prefixEnd += 1
            }
            if prefixEnd == left { break }
           
            left = prefixEnd
            right = suffixEnd
        }

        return right-left + 1 
    }
}
