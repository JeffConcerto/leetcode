class Solution {
    func predictPartyVictory(_ senate: String) -> String {
        var senate = Array(senate)        
        var isRepublicans = true
        var isDemocrats = true

        var removeDem = 0
        var removePub = 0
        
        while isRepublicans && isDemocrats {
            isRepublicans = false
            isDemocrats = false
            for i in 0..<senate.count {
                let char = senate[i]
                switch char {
                    case "-": continue 
                    case "R":
                        if removePub > 0 {
                            senate[i] = "-"
                            removePub -= 1
                        } else {
                            isRepublicans = true
                            removeDem += 1
                        }
                    case "D":
                        if removeDem > 0 {
                            senate[i] = "-"
                            removeDem -= 1
                        } else {
                            isDemocrats = true
                            removePub += 1
                        }
                        default: continue
                    }
            }
        }

        return isRepublicans ? "Radiant" : "Dire"
    }
}


