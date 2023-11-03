class Solution {
    func buildArray(_ target: [Int], _ n: Int) -> [String] {
        var result = [Int]()
        var steps = [String]()
        var stream = 1
        var i = 0
        while target != result {
            result.append(0)
            while target[i] != result[i] {
                result[i] = stream
                stream += 1
                steps.append("Push")
                if result[i] != target[i] {
                    steps.append("Pop")
                }
            }
            i += 1
        }

        return steps
    }
}
