class Solution {
    func minimizedStringLength(_ s: String) -> Int {
        return Set(Array(s)).count
    }
}
