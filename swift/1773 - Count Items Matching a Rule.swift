class Solution {
    func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
        var itemsThatMatch = 0
        let ruleKeyIndex: Int 
    
        if ruleKey == "type"{
            ruleKeyIndex = 0
        } else if ruleKey == "color" {
            ruleKeyIndex = 1
        } else {
            ruleKeyIndex = 2
        }
        
        for item in items {
            if item[ruleKeyIndex] == ruleValue { itemsThatMatch += 1 }
        }
        
        return itemsThatMatch
    }
}
