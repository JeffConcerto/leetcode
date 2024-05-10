class Solution {
    func kthSmallestPrimeFraction(_ arr: [Int], _ k: Int) -> [Int] {
       var results = [[Double]]()

       for i in 0..<arr.count {
        for j in i+1..<arr.count {
            let fraction = Double(arr[i]) / Double(arr[j])
            results.append([fraction, Double(i), Double(j)])
        }
       }
       
       results.sort { $0[0] < $1[0] }

       return [arr[Int(results[k-1][1])], arr[Int(results[k-1][2])]]
    }
}
