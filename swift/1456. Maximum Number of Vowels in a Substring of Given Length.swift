class Solution {
    func maxVowels(_ s: String, _ k: Int) -> Int {
        let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
        let s = Array(s)
        var count = 0
        var maxVowels = 0
        for i in 0..<s.count {
            if (i+1) > k && vowels.contains(s[i-k]) {
                    count -= 1
            }
            
            if vowels.contains(s[i]) { count += 1}

            maxVowels = max(count, maxVowels)
        }

        return maxVowels
    }
}
