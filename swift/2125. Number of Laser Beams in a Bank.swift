class Solution {
    func numberOfBeams(_ bank: [String]) -> Int {
        var preRowBeams = 0
        var total = 0

        for row in bank {
            var currentBeams = 0
            for char in row {
                currentBeams += char == "1" ? 1 : 0
            }
            total += preRowBeams * currentBeams
            if currentBeams > 0 {
                preRowBeams = currentBeams
            }
        }

        return total
    }
}
