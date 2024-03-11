class Solution {
    func customSortString(_ order: String, _ s: String) -> String {
        var sCount = s.reduce(into:[:]) { $0[$1, default: 0] += 1 }
        var result = ""
        for char in order {
            if let count = sCount[char] {
                result += String(repeating: char, count: count)
                sCount[char] = nil
            }
        }

        for (char, count) in sCount {
            result += String(repeating: char, count: count)
        }

        return result
    }
}

// a = 3
// b = 2
// c = 1

// 1 a 
// 1 b
// 1 c
