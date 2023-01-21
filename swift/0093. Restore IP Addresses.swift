// Not my solution. Needed help to solve. Solution belongs to neetCode:
class Solution {
    func restoreIpAddresses(_ s: String) -> [String] {
        guard s.count <= 12 else { return [] }
        var result = [String]()
        let s = Array(s)

        func backtrack(_ i: Int, _ dots: Int, _ currentIP: String) {
            // Check if we've reached the end:
            guard dots < 4 else {
                if i == s.count {
                     // Successful IP address. Add to result.
                // currentIP has 4 dots, but last dot is not required,
                // so dropLast():
                result.append(String(currentIP.dropLast()))
                }
                return
            }
           
            for j in i..<min(i+3, s.count) {
                // Check if current Integer is valid. Is < 255,
                // And i == j (only one digit) OR first digit != "0":
                let string = String(s[i...j])
                if Int(string)! <= 255 && (i == j || s[i] != "0") {
                    // If so, backtrack:
                    let updatedIP = currentIP + string + "."
                    // print(updatedIP)
                    backtrack(j+1, dots + 1, updatedIP)
                }
            }
        }

        backtrack(0,0,"")
        return result
        
    }
}
