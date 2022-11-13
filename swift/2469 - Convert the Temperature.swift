class Solution {
    func convertTemperature(_ celsius: Double) -> [Double] {
        return [celsius + 273.15, celsius * 1.8 + 32]
    }
}
