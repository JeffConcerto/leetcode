class Solution {
    func minMovesToSeat(_ seats: [Int], _ students: [Int]) -> Int {
        let seats = seats.sorted()
        let students = students.sorted()
        
        var moves = 0
        for i in 0..<seats.count {
            moves += abs(students[i] - seats[i])
        }
        
        return moves
    }
}
