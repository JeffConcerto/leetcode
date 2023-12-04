class Solution {
    func findPeaks(_ mountain: [Int]) -> [Int] {
        let n = mountain.count
        var peaks = [Int]()
        
        if mountain[0] > mountain[1] { peaks.append(0) }
        if mountain[n-1] > mountain[n-2] { peaks.append(n-1) }

        for i in 1..<n-1 {
            if mountain[i] > mountain[i-1] && mountain[i] > mountain[i+1] {
                peaks.append(i)
            }
        }

        return peaks
    }
}
