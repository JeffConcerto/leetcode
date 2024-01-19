class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var result = [String]()
        
        func generate(_ left: Int, _ right: Int, _ current: String) {
            if left == n && right == n {
                result.append(current)
            }
            if left < n {
                generate(left+1,right,current+"(")
            }
            if right < left {
                generate(left,right+1,current+")")
            }
        }

        generate(0,0,"")
        return result
    }
}
