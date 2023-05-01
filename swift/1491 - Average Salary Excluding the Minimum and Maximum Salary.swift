// Sort Solution:
class Solution {
    func average(_ salary: [Int]) -> Double {
        let salarySorted = Array(salary.sorted()[1..<salary.count - 1])
        let total = salarySorted.reduce(0, +)
        
        return Double(total) / Double(salarySorted.count)
        
    }
}

// Swift Solution:
class Solution {
    func average(_ salary: [Int]) -> Double {
        let maxSalary = salary.max() ?? 0
        let minSalary = salary.min() ?? 0
        let total = salary.reduce(0,+)
        return Double((total-minSalary-maxSalary)) / Double(salary.count-2)
    }
}

// Manual Solution:
class Solution {
    func average(_ salary: [Int]) -> Double {
        var maxSalary = 0
        var minSalary = Int.max
        var total = 0
        for money in salary {
            total += money
            maxSalary = max(maxSalary, money)
            minSalary = min(minSalary,money)
        }

        return Double((total-minSalary-maxSalary)) / Double(salary.count-2)
    }
}
