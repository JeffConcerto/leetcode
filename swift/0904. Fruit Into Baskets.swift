// Solution #1:
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

// Solution #2:
class Solution {
    func totalFruit(_ fruits: [Int]) -> Int {
       var basketMap = [Int: Int]()
       var left = 0

       for (right, fruit) in fruits.enumerated() {
           basketMap[fruit, default: 0] += 1

           if basketMap.count > 2 {
               basketMap[fruits[left]]! -= 1

               if basketMap[fruits[left]]! == 0 {
                   basketMap[fruits[left]] = nil
               }

               left += 1
           }
       }

       return fruits.count - left 
    }
}

// Solution #3:
class Solution {
    func totalFruit(_ fruits: [Int]) -> Int {
       var basketMap = [Int: Int]()
       var left = 0
       var maxFruit = 0

       for (right, fruit) in fruits.enumerated() {
           basketMap[fruit, default: 0] += 1

           while basketMap.count > 2 {
               let fruit = fruits[left]
               if let count = basketMap[fruit] {
                   if count == 1 {
                       basketMap[fruit] = nil
                   } else {
                       basketMap[fruit] = count-1
                   }
               }
               left += 1
           }

           maxFruit = max(maxFruit, right - left + 1)
       }

       return maxFruit
    }
}
