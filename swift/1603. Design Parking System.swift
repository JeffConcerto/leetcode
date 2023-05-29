
class ParkingSystem {
    private var spaces = Array(repeating: 0, count: 4)

    init(_ big: Int, _ medium: Int, _ small: Int) {
        spaces[1] = big
        spaces[2] = medium
        spaces[3] = small 
    }
    
    func addCar(_ carType: Int) -> Bool {
        guard spaces[carType] > 0 else { return false }
        spaces[carType] -= 1
        return true
    }
}

/**
 * Your ParkingSystem object will be instantiated and called as such:
 * let obj = ParkingSystem(big, medium, small)
 * let ret_1: Bool = obj.addCar(carType)
 */
