// Method 1

class Solution {
    func checkIfExist(_ arr: [Int]) -> Bool {
        var arrSet = Set(arr)
        var zeroCount = 0
        for num in arr {
            if arrSet.contains(num * 2) { 
                if num == 0 {
                    zeroCount += 1
                    if zeroCount > 1 { return true }
            } else {
               return true 
                }
            }
        }
            
        return false

        // return arr.filter { $0 == 0 }.count > 1
}
  
  // Method 2
  class Solution {
    func checkIfExist(_ arr: [Int]) -> Bool {
        var arrSet = Set(arr)
      
        for num in arr where num != 0 {
            if arrSet.contains(num * 2) { return true }
        }
      
        return arr.filter { $0 == 0 }.count > 1
    }
}
    
    
    // Method 3
  class Solution {
    func checkIfExist(_ arr: [Int]) -> Bool {
        let arrDoubles = arr.map {$0 * 2}
        
        var arrSet = Set(arr)
        if arrSet.contains(0) { arrSet.remove(0) }
        
        for double in arrDoubles {
            if arrSet.contains(double) { return true }
        }
        
        return arrDoubles.filter {$0 == 0 }.count > 1
    }
}
