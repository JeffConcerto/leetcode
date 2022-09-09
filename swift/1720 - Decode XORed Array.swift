class Solution {
    func decode(_ encoded: [Int], _ first: Int) -> [Int] {
        var arr = [first]
        
        for num in encoded {
            arr.append(num ^ arr.last!)
        }
        
        return arr
    }
    

}
