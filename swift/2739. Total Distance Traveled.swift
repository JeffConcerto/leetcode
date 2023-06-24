class Solution {
    func distanceTraveled(_ mainTank: Int, _ additionalTank: Int) -> Int {
        var mainTank = mainTank
        var additionalTank = additionalTank
        var distance = 0

        while mainTank > 0 {
            distance += min(mainTank, 5)
            mainTank -= 5
            if mainTank >= 0  && additionalTank > 0 { 
                mainTank += 1
                additionalTank -= 1
            }
        }

        return distance * 10
    }
}
