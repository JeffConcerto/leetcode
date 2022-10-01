class Solution {
    func countPoints(_ rings: String) -> Int {
        var array = Array(repeating: Set<Character>(), count: 10)
        
        var currentColor: Character = "."
        
        for char in rings {
            if char.isWholeNumber {
                array[char.wholeNumberValue!].insert(currentColor)
            } else {
                currentColor = char
            }
        }
        
        return array.filter { $0.count == 3}.count
    }
}
