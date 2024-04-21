class Solution {
    func numberOfSpecialChars(_ word: String) -> Int {
        var lower = Array(repeating: 0, count: 26)
        var upper = Array(repeating: 0, count: 26)
        let aAsciiVal = Character("a").asciiValue!
        let AAsciiVal = Character("A").asciiValue!
        for char in word {
            if char.isLowercase {
                if upper[Int(char.asciiValue!) - 32 - Int(AAsciiVal)] > 0 {
                    lower[Int(char.asciiValue! - aAsciiVal)] = 0
                } else {
                    lower[Int(char.asciiValue! - aAsciiVal)] += 1
                }
            } else {
            upper[Int(char.asciiValue! - AAsciiVal)] += 1
        }
      }
      var count = 0
      for i in 0..<26 {
        if lower[i] > 0 && upper[i] > 0 {
            count += 1
        }
      }

      return count
    }
}
