class Solution {
    func maxDistance(_ position: [Int], _ m: Int) -> Int {
        let maxi = position.max()!
        let mini = position.min()!
        var left = 1
        var right = maxi-mini
        let positions = position.sorted()

        func canPosition(_ distance: Int) -> Bool {
            var current = positions[0]
            var count = 1
            for i in 1..<positions.count {
                if abs(current - positions[i]) >= distance {
                    count += 1
                    current = positions[i]
                    if count == m { return true}
                }
            }
            return count == m
        }

        var answer = 1

        while left <= right {
            let middle = left + (right-left)/2

            if canPosition(middle) {
                left = middle+1
                answer = middle
            } else {
                right = middle-1
            }
        }

        return answer
    }
}
