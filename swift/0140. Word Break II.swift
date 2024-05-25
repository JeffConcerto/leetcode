class Solution {
    func wordBreak(_ s: String, _ wordDict: [String]) -> [String] {
        let s = Array(s)
        let wordDict = Set(wordDict)
        var result = [String]()

       func dfs(_ i: Int, _ currentWord: String, _ sentence: String) {
        if i == s.count { 
            if currentWord == "" {
                result.append(sentence)
            }
            return 
        }
        var currentWord = currentWord + String(s[i])
        if wordDict.contains(currentWord) {
            let newSentence = sentence.isEmpty ? sentence + currentWord : sentence + " " + currentWord
            dfs(i+1, "", newSentence)
        }
        dfs(i+1, currentWord, sentence)
       } 

       dfs(0,"", "")
       return result
    }
}
