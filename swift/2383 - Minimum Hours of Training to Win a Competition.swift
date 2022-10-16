class Solution {
    func minNumberOfHours(_ initialEnergy: Int, _ initialExperience: Int, _ energy: [Int], _ experience: [Int]) -> Int {
        var energyNeeded = 0
        var currentEnergy = initialEnergy

        
        for health in energy {
            if currentEnergy <= health {
                energyNeeded += health - currentEnergy + 1
                currentEnergy += health - currentEnergy + 1
            }
            currentEnergy -= health
        }
        
        var currentExp = initialExperience
        var experienceNeeded = 0
        
        for exp in experience {
            if currentExp <= exp {
                let expForTurn = exp - currentExp + 1
                experienceNeeded += expForTurn
                currentExp += expForTurn
            }
            currentExp += exp
        }
        
        return energyNeeded + experienceNeeded
    }
}
