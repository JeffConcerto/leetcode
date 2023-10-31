class Solution {
    func findArray(_ pref: [Int]) -> [Int] {
        var result = pref

        for i in 1..<pref.count {
            result[i] = pref[i-1] ^ pref[i]
        }
       
        return result
    }
}
