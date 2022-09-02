// Method 1 
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

// Method 2
class Solution {
    func slowestKey(_ releaseTimes: [Int], _ keysPressed: String) -> Character {
        let keysPressed = Array(keysPressed)
        var key: Character = keysPressed[0]
        var maxDuration = releaseTimes[0]
        
        for i in 1..<releaseTimes.count {
            let time = releaseTimes[i] - releaseTimes[i-1]
            if time == maxDuration {
                key = key > keysPressed[i] ? key : keysPressed[i] 
            } else if time > maxDuration {
                maxDuration = time
                key = keysPressed[i]
            }
    
        }
        
        return key
    }
}
