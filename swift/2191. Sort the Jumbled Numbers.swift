class Solution {
    func sortJumbled(_ mapping: [Int], _ nums: [Int]) -> [Int] {
        var newNums = [(index:Int, number: Int)]()

        for (i, num) in nums.enumerated() {
            newNums.append((index:i, number: convert(num)))
        }

        func convert(_ number: Int)-> Int {
            let string = String(number)
            var sum = 0
            for num in string {
                sum *= 10
                sum += mapping[num.wholeNumberValue!]
            }
            return sum
        }

        let result = newNums.sorted { $0.number < $1.number }.map { nums[$0.index] }

        return result
    }
}
