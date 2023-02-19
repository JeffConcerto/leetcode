class Solution {
    func mergeArrays(_ nums1: [[Int]], _ nums2: [[Int]]) -> [[Int]] {
        var result = [[Int]]()

        var i = 0
        var j = 0
        var idMap = [Int:Int]()

        while i < nums1.count || j < nums2.count {
            let id1 = i < nums1.count ? nums1[i][0] : 10_000_000
            let id2 = j < nums2.count ? nums2[j][0] : 10_000_000

            if id1 <= id2 {
                if let index = idMap[id1] {
                    result[index][1] += nums1[i][1]
                } else {
                    result.append([id1, nums1[i][1]])
                    idMap[id1] = result.count-1
                }
               
                i += 1
            } else {
                if let index = idMap[id2] {
                    result[index][1] += nums2[j][1]
                } else {
                    result.append([id2, nums2[j][1]] )
                    idMap[id2] = result.count-1
                }
               
                j += 1
            }

        }

        return result
    }
}
