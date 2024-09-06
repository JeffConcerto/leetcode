class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var answer = Array(repeating: 0, count: temperatures.count)
        var stack = [Int]()
        for i in 0..<temperatures.count {
            while !stack.isEmpty && temperatures[stack.last!] < temperatures[i] {
                let prevIndex = stack.removeLast()
                answer[prevIndex] = i-prevIndex
            }

            stack.append(i)
        }

        return answer
    }
}
