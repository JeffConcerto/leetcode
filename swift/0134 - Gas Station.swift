class Solution {
    func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
        var maxGas = gas[0]
        var maxGasIndex = 0
        for i in 1..<gas.count {
            if maxGas < gas[i] {
                maxGas = gas[i]
                maxGasIndex = i
            }
        }

        var stationStart = maxGasIndex
        var currentStation = maxGasIndex
        var stationsVisited = 0
        var currentFuel = 0
        var stationsTested = 0
        while stationStart < gas.count {
            currentFuel += gas[currentStation]
            currentFuel -= cost[currentStation]
            if currentFuel < 0 {
                stationStart = (stationStart + 1) % gas.count
                stationsVisited = 0
                currentFuel = 0
                currentStation = stationStart
                stationsTested += 1
                if stationsTested == gas.count { return -1 }
            } else {
                currentStation = (currentStation + 1) % gas.count
                stationsVisited += 1
                if stationStart == currentStation { return stationStart}
            }
        }

        return -1

    }
}
