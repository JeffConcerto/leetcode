// Not my solution. Needed help to solve. Solution belongs to sergeyleschev:
class Solution {
    func restoreIpAddresses(_ s: String) -> [String] {
        if s.count > 12 || s.count < 4 { return [] }

        var s = Array(s)
        var result = [String]()

        func backtrack(_ path: [Int], _ length: Int) {
            if path.count == 4 {
                if length == s.count {
                    var string = ""
                    for (index, char) in s.enumerated() {
                        string.append(char)
                        if index < length-1 && path.contains(index+1) {
                            string.append(".")
                        }
                    }
                 result.append(string)
                }
                return
            }

            var path = path
            for i in 1..<4 {
                if i + length > s.count { break }

                if i >= 2 {
                    if Int(String(s[length]))! == 0 { break }
                }

                if i == 3 {
                    if Int(String(s[length]) + String(s[length+1]) + String(s[length+2]))! > 255 {break}
                }

                path.append(length + i)
                backtrack(path, length+i)
                path.remove(at: path.count-1)
            }

           

        }
        
         backtrack([], 0)
            return result
        
    }
}
