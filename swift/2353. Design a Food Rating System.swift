
class FoodRatings {
    private var foodMap = [String:Int]()
    private var foods: [String]
    private var cuisines: [String]
    private var ratings: [Int]
    private var cuisineMap = [String:String]()
    init(_ foods: [String], _ cuisines: [String], _ ratings: [Int]) {
        self.foods = foods
        self.cuisines = cuisines
        self.ratings = ratings
        for (i, food) in foods.enumerated() {
            foodMap[food] = i
            if let highestFood = cuisineMap[cuisines[i]] {
                let rating = ratings[foodMap[highestFood]!]
                if ratings[i] > rating || (ratings[i] == rating && foods[i] < highestFood) {
                    cuisineMap[cuisines[i]] = food
                }
            } else {
                cuisineMap[cuisines[i]] = food
            }
        }
    }
    
    func changeRating(_ food: String, _ newRating: Int) {
        let index = foodMap[food]!
        // Check if was highest rated:
        let highestFood = cuisineMap[cuisines[index]]!
        let highestRating = ratings[foodMap[highestFood]!]
        if highestFood == food {
            if newRating < ratings[index] { 
                ratings[index] = newRating
                var maxRating = 0
                var maxIndex = -1
                for i in 0..<foods.count where cuisines[i] == cuisines[index] {
                    if ratings[i] > maxRating || (ratings[i] == maxRating && foods[i] < foods[maxIndex] ) {
                        maxRating = ratings[i]
                        maxIndex = i
                    }
                }
                cuisineMap[cuisines[index]] = foods[maxIndex]
             }
        } else if newRating > highestRating || (newRating == highestRating  && food < highestFood) {
            cuisineMap[cuisines[index]] = food
        }
        ratings[index] = newRating
    }
    
    func highestRated(_ cuisine: String) -> String {
        return cuisineMap[cuisine]!
    }
}

/**
 * Your FoodRatings object will be instantiated and called as such:
 * let obj = FoodRatings(foods, cuisines, ratings)
 * obj.changeRating(food, newRating)
 * let ret_2: String = obj.highestRated(cuisine)
 */
