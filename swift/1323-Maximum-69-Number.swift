class Solution {
    func maximum69Number (_ num: Int) -> Int {
        var numArray = Array(String(num))
        
        for (index, value) in numArray.enumerated() {
            if value == "6" {
                numArray[index] = "9"
                break
            }
        }
        
        return Int(String(numArray))!  
    }
}
