class Solution {
    func topKFrequent(_ words: [String], _ k: Int) -> [String] {
        var array = Array(repeating: [String](), count: words.count)

        var freqMap = [String:Int]()

        for word in words {
            freqMap[word, default:0] += 1
        }

        for (key,value) in freqMap.sorted { $0.0 < $1.0} {
            array[value].append(key)
        }

        var result = [String]()
        let n = array.count

        for i in 0..<n{
            if array[n-i-1].isEmpty { continue }
            result += array[n-i-1]
            if result.count >= k { break }
        }

        return Array(result[0..<k])
    }
}
