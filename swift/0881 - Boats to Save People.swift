class Solution {
    func numRescueBoats(_ people: [Int], _ limit: Int) -> Int {
        var minBoats = 0
        let people = people.sorted()
        var left = 0
        var right = people.count-1

        while left < right {
            if people[left] + people[right] <= limit {
                left += 1
                right -= 1
                minBoats += 1
            } else {
                right -= 1
                minBoats += 1
            }
        }
        if left == right { minBoats += 1}

        return minBoats
    }
}
