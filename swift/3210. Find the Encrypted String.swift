class Solution {
    func getEncryptedString(_ s: String, _ k: Int) -> String {
        let s = Array(s)
        var result = s
        let length = result.count
        let k = k % length
        for i in 0..<length { 
            if i + k < length { 
                result[i] = s[i + k]
            } else if k < length { 
                result[i] = s[i + k - length]
            }
        }
        return String(result)
    }
}
