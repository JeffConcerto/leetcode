
class OrderedStream {
    var currentIndex = 0
    var array: [String]

    init(_ n: Int) {
        self.array = Array(repeating: "", count: n)
        
    }
    
    func insert(_ idKey: Int, _ value: String) -> [String] {
        array[idKey-1] = value
        var chunk = [String]()
        
        for index in currentIndex..<array.count {
            if array[index] == "" { currentIndex = index; break }
            chunk.append(array[index])
        }
        return chunk
    }
}

/**
 * Your OrderedStream object will be instantiated and called as such:
 * let obj = OrderedStream(n)
 * let ret_1: [String] = obj.insert(idKey, value)
 */
