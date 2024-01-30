class Solution {
    func carFleet(_ target: Int, _ position: [Int], _ speed: [Int]) -> Int {
        let order = position.sorted(by: <)
        var map = [Int:Int]()

        for (i, pos) in order.enumerated() {
            map[pos] = i
        }
        var stack = Array(repeating: 0.0, count: position.count)

        for i in 0..<position.count {
            var distance = Double(target-position[i]) / Double(speed[i])
            stack[ map[position[i]]! ] = distance
        }

        var fleet = 0

        while !stack.isEmpty {
            var head = stack.removeLast()

            while !stack.isEmpty && stack.last! <= head {
                stack.removeLast()
            }

                fleet += 1
        }
        return fleet
    }
}
