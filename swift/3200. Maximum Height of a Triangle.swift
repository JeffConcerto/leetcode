class Solution {
    func maxHeightOfTriangle(_ red: Int, _ blue: Int) -> Int {
        func getRows(_ most: Int, _ least: Int, _ balls: Int) -> Int {
           if most - balls < 0 { return 0 }
           if least - (balls+1) < 0 { return 1 }
           return 2 + getRows(most-balls, least-(balls+1), balls+2)
        }

        return max(getRows(red,blue,1), getRows(blue,red,1))
    }
}
