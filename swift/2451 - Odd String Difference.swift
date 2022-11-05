class Solution {
    func oddString(_ words: [String]) -> String {
        var set: Set<[Int]> = []
        var correctArray = [Int]()
        
        for word in words {
            let array = getDifferenceArray(for: word)
            if set.contains(array) {
                correctArray = array
                break
            } else {
                set.insert(array)
            }
        }
        
        for word in words {
            let array = getDifferenceArray(for: word)
            if array != correctArray { return word }
        }
        
        return ""
    }
    
    func getDifferenceArray(for string: String) -> [Int] {
        var string = Array(string)
        var result = [Int]()
        for i in 0..<string.count - 1 {
            let firstVal = Int(string[i+1].asciiValue!)
            let secondVal = Int(string[i].asciiValue!)
            result.append(firstVal - secondVal)
        }
        return result
    }
}
