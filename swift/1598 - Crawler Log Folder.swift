// Method 1

class Solution {
    func minOperations(_ logs: [String]) -> Int {
        var stack = [String]()
        
        for log in logs {
            if log == "../" {
                stack.popLast()
            } else if log == "./" {
              continue  
            }  else {
                stack.append(log)
            }
        }
        
        return stack.count
    }
}

// Method 2
class Solution {
    func minOperations(_ logs: [String]) -> Int {
        var count = 0
        
        for log in logs {
            if log == "../"  {
                if count > 0 { count -= 1 }
            } else if log == "./" {
              continue  
            }  else {
                count += 1
            }
        }
        
        return count
    }
}
