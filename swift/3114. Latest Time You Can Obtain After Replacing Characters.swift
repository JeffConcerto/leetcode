class Solution {
    func findLatestTime(_ s: String) -> String {
        var s = Array(s)

        for i in 0..<s.count {
            if s[i] != "?" { continue }
            switch i {
                case 0:
                s[i] = s[1] == "?" || s[1] <= "1" ? "1" : "0"
                case 1:
                s[i] = s[0] == "1" ? "1" : "9"
                case 3:
                s[i] = "5"
                case 4:
                s[i] = "9"
                default:
                break
            }
        }

        return String(s)
    }
}
