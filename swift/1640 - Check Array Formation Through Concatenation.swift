class Solution {
    func canFormArray(_ arr: [Int], _ pieces: [[Int]]) -> Bool {
        var result = [Int]()
        
            var copyPieces = pieces
            var previousCount = Int.min
            while result.count != arr.count && previousCount != copyPieces.count  {
                previousCount = copyPieces.count
                var index = 0
                while index < copyPieces.count {
                    if copyPieces[index][0] == arr[result.count] {
                        result += copyPieces[index]
                        copyPieces.remove(at: index)
                    } else {
                        index += 1
                    }
                }
            }
        
        return result == arr
    }
}
