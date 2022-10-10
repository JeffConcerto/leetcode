class Solution {
    func convertTime(_ current: String, _ correct: String) -> Int {
        let current = current.split(separator: ":")
        let correct = correct.split(separator: ":")
        
        let currentHour = Int(current[0])!
        let currentMinute = Int(current[1])!
        
        let correctHour = Int(correct[0])!
        let correctMinute = Int(correct[1])!
        
        let totalCurrentTime = currentHour * 60 + currentMinute
        let totalCorrectTime = correctHour * 60 + correctMinute
        
        var difference = abs(totalCurrentTime - totalCorrectTime)
        
        var totalOperations = 0
        
            while difference >= 60 {
                difference -= 60
                totalOperations += 1
            }  
                    
            while difference >= 15 {
                difference -= 15
                totalOperations += 1
            }
            
            while difference >= 5 {
                difference -= 5
                totalOperations += 1
            }
            
            while difference >= 1 {
                difference -= 1
                totalOperations += 1
            }
        
        return totalOperations
    }
}
