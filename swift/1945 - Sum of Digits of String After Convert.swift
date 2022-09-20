class Solution {
    func getLucky(_ s: String, _ k: Int) -> Int {
        let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
        
        var digitString = ""
        for char in s {
            let digit = alphabet.firstIndex(of: char)! + 1
            digitString = String(digit) + digitString
        }
        
        var sum = 0
        var k = k
        
        while k > 0 {
            sum = 0
            
            for char in digitString {
                sum += char.wholeNumberValue!
            }
            digitString = String(sum)
            k -= 1
        }
        
        return sum
    }
}
