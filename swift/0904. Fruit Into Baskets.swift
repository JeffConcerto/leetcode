class Solution {
    func totalFruit(_ fruits: [Int]) -> Int {
        var fruitSet = Set<Int>()
        var maxFruit = 0

        for i in 0..<fruits.count {
            if maxFruit >= fruits.count - i { break }
            fruitSet = []
            for j in i..<fruits.count {
                fruitSet.insert(fruits[j])
                guard fruitSet.count <= 2 else { break }
                maxFruit = max(maxFruit, j+1-i)
            }
        }

        return maxFruit
    }
}
