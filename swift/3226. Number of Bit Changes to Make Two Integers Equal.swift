class Solution {
    func minChanges(_ n: Int, _ k: Int) -> Int {
        var n = n 
        var k = k
        var changes = 0
        var arrN = [Int]()
        var arrK = [Int]()

        while n > 0 || k > 0 {
            let nBit = n > 0 ? n % 2 : 0
            let kBit = k > 0 ? k % 2 : 0
            n /= 2
            k /= 2
            arrN.append(nBit)
            arrK.append(kBit)
        }

        for i in stride(from: arrN.count-1, to: -1, by: -1) {
            if arrN[i] != arrK[i] {
                if arrN[i] == 1 {
                    changes += 1
                } else {
                    return -1
                }
            }
        }
       
        return changes
    }
}
