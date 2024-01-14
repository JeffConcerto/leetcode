class Solution {
    func closeStrings(_ word1: String, _ word2: String) -> Bool {
        var map1 = word1.reduce(into:[:]) { $0[$1, default:0] += 1 }
        var map2 = word2.reduce(into:[:]) { $0[$1, default: 0] += 1 }
        if map1 == map2 { return true }
        if map1.keys != map2.keys || map1.values.sorted() != map2.values.sorted() { return false }

        return true
    }
}
