// Method 1:
class Solution {
    func countTriples(_ n: Int) -> Int {
        var hashmap = [Int: [(Int,Int)]]()
        
        for i in 1...n {
            for j in 1...n {
                let result = Int(pow(Double(i),2) + pow(Double(j),2))
                hashmap[result, default: []].append((i, j))
            }
        }
        
        var total = 0
        
        for i in 1...n {
            let c = Int(pow(Double(i),2))
            if let array = hashmap[c] {
                 total += array.count
            }
           
        }
        
        return total
        
    }
}

// Method 2:
class Solution {
    func countTriples(_ n: Int) -> Int {
        var hashmap = [Int: Int]()
        
        for i in 1...n {
            for j in 1...n {
                let result = Int(pow(Double(i),2) + pow(Double(j),2))
                hashmap[result, default: 0] += 1
            }
        }
        
        var total = 0
        
        for i in 1...n {
            let c = Int(pow(Double(i),2))
            total += hashmap[c] ?? 0
        }
        
        return total
        
    }
}

// Method 3:
class Solution {
    func countTriples(_ n: Int) -> Int {
        var total = 0
        
        for i in 1...n {
            for j in 1...n {
                let result = pow(Double(i),2) + pow(Double(j),2)
                let root = sqrt(result)
                let intRoot = Double(Int(root)) 
                if root == intRoot && Int(intRoot) <= n {
                    total += 1
                }
            }
        }
    
        return total
        
    }
}
