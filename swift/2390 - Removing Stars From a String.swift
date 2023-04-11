// Simple:
class Solution {
    func removeStars(_ s: String) -> String {
        var result = [Character]()

        for char in s {
            if char == "*" {
                result.removeLast()
            } else {
                result.append(char)
            }
        }
       
        return String(result)
    }
}

// More complicated:
class Solution {
    func removeStars(_ s: String) -> String {
        var string = Array(s)
        var starIndex = 0
        var result = [Character]()

        while starIndex < string.count {
            guard string[starIndex] == "*" else {
                result.append(string[starIndex])
                starIndex += 1
                continue 
            }
            result.removeLast()
            starIndex += 1
        }

        return String(result)
    }
}
