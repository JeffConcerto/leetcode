class Solution {
    func kthDistinct(_ arr: [String], _ k: Int) -> String {
        var stringMap = [String:Int]() 
        
        for string in arr {
            stringMap[string, default: 0] += 1
        }
        
        var count = 0
        
        for string in arr where stringMap[string]! == 1 {
            count += 1
            if count == k { return string }
        }
        
        return ""
    }
}
