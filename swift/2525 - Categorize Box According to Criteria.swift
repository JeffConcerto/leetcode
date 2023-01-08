class Solution {
    func categorizeBox(_ length: Int, _ width: Int, _ height: Int, _ mass: Int) -> String {
        var isBulky = false
        var isHeavy = false

        if length >= 10_000 || width >= 10_000 || height >= 10_000 || (length * width * height) >= 1_000_000_000 {
            isBulky = true
        }

        if mass >= 100 { isHeavy = true }

        if isBulky && isHeavy {
            return "Both"
        } else if isBulky {
            return "Bulky"
        } else if isHeavy {
            return "Heavy"
        } else {
            return "Neither"
        }
    }
}
