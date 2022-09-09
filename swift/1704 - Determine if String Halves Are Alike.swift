class Solution {
    func halvesAreAlike(_ s: String) -> Bool {
        let vowels = Set("aeiouAEIOU")
        let string = Array(s)
        let firstHalf = Array(string[0..<s.count / 2])
        let secondHalf = Array(string[s.count / 2..<s.count])
        
        var firstCount = 0
        var secondCount = 0
        for index in 0..<firstHalf.count {
            if vowels.contains(firstHalf[index]) { firstCount += 1 }
            if vowels.contains(secondHalf[index]) { secondCount += 1 }

        }
        
        return firstCount == secondCount
    }
    
}
