class Solution {
    func divideString(_ s: String, _ k: Int, _ fill: Character) -> [String] {
        var string = Array(s)
        var count = s.count % k == 0 ? s.count - 1 : k * (s.count / k) + k
        
        if k > s.count { count = k }
        var resultArray: [String] = [] 
        var currentString = ""
        for i in 0...count {   
            currentString += i < string.count ? String(string[i]) : String(fill)
            
             if currentString.count % k == 0 {
                resultArray.append(currentString)
                currentString = ""
            }
        }

        
        return resultArray
    }
}
