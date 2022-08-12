class Solution {
    func freqAlphabets(_ s: String) -> String {
        let alphabet = Array(" abcdefghijklmnopqrstuvwxyz")
        let string = Array(s)
        var result = ""
        
        var currentNum = ""
        var isHash = false
        var index = string.count - 1

        while index >= 0 {
            let number = String(string[index])
            
            if isHash {
                currentNum = number + currentNum
                isHash = false
                result.append(alphabet[Int(currentNum)!])
            } else {
                if number == "#"{
                    index -= 1
                    let nextNumber = String(string[index])
                    currentNum = nextNumber
                    isHash = true
                } else {
                    result.append(alphabet[Int(number)!])
                }
            } 
            index -= 1 
        }

        return String(result.reversed())
    }
}
