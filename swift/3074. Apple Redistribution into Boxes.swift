class Solution {
    func minimumBoxes(_ apple: [Int], _ capacity: [Int]) -> Int {
        var apples = apple.reduce(0,+)
        let capacity = capacity.sorted(by: >)

        for (i,size) in capacity.enumerated() {
            apples -= size
            if apples <= 0 {
                return i+1
            }
        }

        return capacity.count
    }
}
