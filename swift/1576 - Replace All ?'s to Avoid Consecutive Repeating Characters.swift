class Solution {
    func modifyString(_ s: String) -> String {
        var string = Array(s)
        let alphabet = Array("abcdefghijklmnopqrstuvwxyz")
        
        for (index, char) in string.enumerated() {
            guard char == "?" else { continue }
                string[index] = alphabet[0]

                var alphaIndex = 1
                let previous = index > 0 ? string[index-1] : "."
                let next = index < string.count - 1 ? string[index+1] : "."

            while string[index] == previous || string[index] == next {
                string[index] = alphabet[alphaIndex]
                alphaIndex += 1
            }
            
        }
        
        return String(string)
    }
}
