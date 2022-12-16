class Solution {
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        let str1 = Array(str1)
        let str2 = Array(str2)

        let smallString = str1.count > str2.count ? str2 : str1
        let largeString = smallString == str1 ? str2 : str1

        return getCommonDivisor(of: largeString, from: smallString)
    }

    private func getCommonDivisor(of largeString: [Character], from smallString: [Character]) -> String {
        var end = smallString.count

        while end > 0 {
            guard largeString.count % end == 0 && smallString.count % end == 0 else { end -= 1; continue }

            var isMatch = true
            for i in 0..<largeString.count {
                if smallString[i % end] != largeString[i] { isMatch = false; break}
            }
            if isMatch && doesDivide(smallString, with: Array(smallString[0..<end])) {
                return String(Array(smallString[0..<end]))
            }
            end -= 1
        }

        return ""
    }

      private func doesDivide(_ largeString: [Character], with smallString: [Character]) -> Bool {
        let end = smallString.count 

        for i in 0..<largeString.count {
            if largeString[i] != smallString[i % end] { return false}
        }

        return true
    }
}
