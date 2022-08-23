class Solution {
    func average(_ salary: [Int]) -> Double {
        let salarySorted = Array(salary.sorted()[1..<salary.count - 1])
        let total = salarySorted.reduce(0, +)
        
        return Double(total) / Double(salarySorted.count)
        
    }
}
