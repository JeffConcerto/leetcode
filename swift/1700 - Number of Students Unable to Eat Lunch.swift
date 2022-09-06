class Solution {
    func countStudents(_ students: [Int], _ sandwiches: [Int]) -> Int {
        var students = students
        var sandwiches = sandwiches
        
        var ateThisTurn = 1
        var whoAteIndexes = [Int]()

        while ateThisTurn > 0 && students.count > 0 {
            ateThisTurn = 0
            
            for (index, student) in students.enumerated() {
                guard student == sandwiches[0] else { continue }
                sandwiches.removeFirst()
                whoAteIndexes.append(index)
                ateThisTurn += 1
            }
            
            for index in whoAteIndexes.reversed() {
                students.remove(at: index)
            }
            
            whoAteIndexes.removeAll()
        }
        
        return students.count        
    }
}
