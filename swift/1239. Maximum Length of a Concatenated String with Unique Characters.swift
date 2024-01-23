class Solution {
    func maxLength(_ arr: [String]) -> Int {
        var sets = [Set<Character>]()
        for string in arr {
            let set = Set(Array(string))
            if set.count < string.count { continue }
            sets.append(set)
        }

        func dfs(_ i: Int, _ current: Set<Character>) -> Int {
            if i == sets.count { return current.count }
            var result = 0
            if current.isEmpty || current.isDisjoint(with: sets[i]) {
                result = dfs(i+1, current.union(sets[i]))
            }
            result = max(result, dfs(i+1, current))
            return result
        }


        return dfs(0,[])
    }
}
