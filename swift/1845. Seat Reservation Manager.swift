
class SeatManager {
    private var seats: [Bool]
    private var firstSeat = 0

    init(_ n: Int) {
        self.seats = Array(repeating: false, count: n)
    }
    
    func reserve() -> Int {
        seats[firstSeat] = true
        let reservedSeat = firstSeat + 1
        firstSeat += 1

        while firstSeat < seats.count-1 && seats[firstSeat] {
            firstSeat += 1
        }

        return reservedSeat
    }
    
    func unreserve(_ seatNumber: Int) {
        seats[seatNumber-1] = false
        firstSeat = min(firstSeat, seatNumber-1)
    }
}

/**
 * Your SeatManager object will be instantiated and called as such:
 * let obj = SeatManager(n)
 * let ret_1: Int = obj.reserve()
 * obj.unreserve(seatNumber)
 */
