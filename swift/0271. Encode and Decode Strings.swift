class Codec {
    func encode(_ strs: [String]) -> String {
        var string = ""
        for str in strs {
            let length = str.count
            string += "\(length)#\(str)"
        }

        return string
    }
    
    func decode(_ s: String) -> [String] {
        let s = Array(s)
        var result = [String]()
        var i = 0
        while i < s.count {
            var count = 0
            while s[i] != "#" {
                count *= 10
                count += s[i].wholeNumberValue!
                i += 1
            }
            i += 1
            let string = String(s[i..<i+count])
            result.append(string)
            i += count
        }

        return result
    }
}

/**
 * Your Codec object will be instantiated and called as such:
 * let obj = Codec()
 * val s = obj.encode(strs)
 * let ans = obj.decode(s)
*/
