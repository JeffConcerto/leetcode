// New Solution:
class Solution {
    func countStudents(_ students: [Int], _ sandwiches: [Int]) -> Int {
        var students = students
        var sandwiches = sandwiches

        while !students.isEmpty {
            var ateSandwich = false
            let size = students.count 
            for _ in 0..<size {
                if students.first! == sandwiches.first! {
                    students.removeFirst()
                    sandwiches.removeFirst()
                    ateSandwich = true
                } else {
                    students.append(students.removeFirst())
                }
            }
            
            if !ateSandwich {
                return students.count
            }
            
        }

        return 0
    }
}
// Old Solution:
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
