class Solution {
    func captureForts(_ forts: [Int]) -> Int {
        return max(maxFortsCaptured(moving: .forward, forts), maxFortsCaptured(moving: .backward, forts))
    }
  
    enum Movement {
        case forward, backward
    }
  
    private func maxFortsCaptured(moving: Movement, _ forts: [Int]) -> Int {
        var maxFortsCaptured = 0
        var currentCaptured = 0
        let n = moving == .forward ? 0 : forts.count-1
        var canCaptureForts = false
        for i in 0..<forts.count {
            if forts[abs(n-i)] == 1 {
                currentCaptured = 0
                canCaptureForts = true
            } else if forts[abs(n-i)] == 0 {
                guard canCaptureForts else { continue }
                currentCaptured += 1
            } else {
                // Landed at empty fort
                maxFortsCaptured = max(maxFortsCaptured, currentCaptured)
                currentCaptured = 0
                canCaptureForts = false
            }
        }
        return maxFortsCaptured
    }
}
