class Solution {
    func containsPattern(_ arr: [Int], _ m: Int, _ k: Int) -> Bool {
        
        var index = 0
        
        while index + m <= arr.count {
            let pattern = arr[index..<index+m]
            var count = 1
          
            var j = index + m
            while j + m <= arr.count {
                let pattern2 = arr[j..<j+m]
              
                if pattern == pattern2 {
                    count += 1
                } else {
                    count = 0
                }
              
                if count == k { return true }
                
                j += m
            }
            
            index += 1
        }
        
        return false
    }
}
