class Solution {
    func compareVersion(_ version1: String, _ version2: String) -> Int {
        let version1 = Array(version1)
        let version2 = Array(version2)

        func convertToNumArray(_ array: [Character]) -> [Int] {
            var versions = [Int]()
            var stack = [Int]()
            for char in array {
                if char != "." {
                    let num = char.wholeNumberValue!
                    stack.append(num)
                } else {
                    var version = 0
                    for num in stack {
                        version *= 10
                        version += num
                    }
                    versions.append(version)
                    stack.removeAll()
                }  
            }
            if !stack.isEmpty {
                var version = 0
                    for num in stack {
                        version *= 10
                        version += num
                    }
                    versions.append(version)
                    stack.removeAll()
            }

            return versions
        }
        var v1 = convertToNumArray(version1)
        var v2 = convertToNumArray(version2)

        while v1.count < v2.count {
            v1.append(0)
        }
        while v2.count < v1.count {
            v2.append(0)
        }

        for i in 0..<v1.count {
            if v1[i] < v2[i] {
                return -1
            } else if v2[i] < v1[i] {
                return 1
            }
        }
    
        return 0
        
    }
}
