class Solution {
    func isCircularSentence(_ sentence: String) -> Bool {
        let sentence = Array(sentence)
        guard sentence.first! == sentence.last! else { return false }
        
         var stack = [Character]()

        for i in 1..<sentence.count {
            if sentence[i] == " " {
                stack.append(sentence[i-1])
            } else if sentence[i-1] == " " {
                let previousChar = stack.removeLast()
                if previousChar != sentence[i] { return false }
            }
        }

        return true
 
    }
 }
