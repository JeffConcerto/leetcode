class Solution {
    func slowestKey(_ releaseTimes: [Int], _ keysPressed: String) -> Character {
        let keysPressed = Array(keysPressed)
        var key: Character = "."
        var maxDuration = 0
        var previousReleaseTime = 0
        
        for i in 0..<releaseTimes.count {
            let time = releaseTimes[i] - previousReleaseTime
            if time == maxDuration {
                key = key > keysPressed[i] ? key : keysPressed[i] 
            } else if time > maxDuration {
                maxDuration = time
                key = keysPressed[i]
            }
    
            previousReleaseTime = releaseTimes[i]
        }
        
        return key
    }
}
