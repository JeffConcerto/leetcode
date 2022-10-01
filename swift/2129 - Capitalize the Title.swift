class Solution {
    func capitalizeTitle(_ title: String) -> String {
        let words = title.split(separator: " ")
        
        var result = ""
        for word in words {
            if word.count < 3 {
                result += String(word).lowercased()
            } else {
                result += String(word).capitalized
            }
            result += " "
        }
        result.removeLast()
        return result
    }
}
