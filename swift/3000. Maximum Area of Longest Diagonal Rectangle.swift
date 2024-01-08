class Solution {
    func areaOfMaxDiagonal(_ dimensions: [[Int]]) -> Int {
        var maxDiagonal = 0
        var maxArea = 0

        for dim in dimensions {
            let dia = dim[0] * dim[0] + dim[1] * dim[1]
            if dia > maxDiagonal {
                maxArea = dim[0] * dim[1]
                maxDiagonal = dia
            } else if dia == maxDiagonal {
                maxArea = max(maxArea, dim[0] * dim[1])
            }
        }

        return maxArea
    }
}
