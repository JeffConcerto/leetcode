class Solution {
    func countTestedDevices(_ batteryPercentages: [Int]) -> Int {
        var devices = 0

        for percent in batteryPercentages {
            let decreasedPercent = max(0,percent - devices)
            if decreasedPercent > 0 {
                devices += 1
            }
        }

        return devices
    }
}
