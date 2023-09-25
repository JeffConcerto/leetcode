class Solution {
    func maximumOddBinaryNumber(_ s: String) -> String {
        var oneCount = 0
        for char in s {
            if char == "1" { oneCount += 1 }
        }

        if oneCount == 1 { 
            var string = String(repeating: "0", count: s.count-1) 
            string.append("1") 
            return string    
        }

        var string = String(repeating: "1", count: oneCount-1)
        
        let zeroCount = s.count-oneCount

        for _ in 0..<zeroCount {
            string.append("0")
        }

        string.append("1")

        return string

    }
}
