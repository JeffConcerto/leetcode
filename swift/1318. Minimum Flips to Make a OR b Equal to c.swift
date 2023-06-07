class Solution {
    func minFlips(_ a: Int, _ b: Int, _ c: Int) -> Int {
        var a = decimalToBinary(a)
        var b = decimalToBinary(b)
        var c = decimalToBinary(c)

        let n = max(a.count,b.count,c.count)

        padBinary(&a,n)
        padBinary(&b,n)
        padBinary(&c,n)
       
        var flips = 0
        for i in 0..<n {
            if c[i] == "0" {
                // Ensure both a && b are 0:
                if a[i] == "1" { flips += 1 }
                if b[i] == "1" { flips += 1 }
            } else {
                // c[i] == 1:
                // Ensure either a || b is 1:
                if a[i] != "1" && b[i] != "1" { flips += 1}
            }
        }

        return flips
        
    }

    private func decimalToBinary(_ num: Int) -> [Character] {
        return Array(String(num, radix: 2))
    }

    private func padBinary(_ binary: inout [Character], _ n: Int) {
        while binary.count < n {
            binary.insert("0", at:0)
        }

    }
}
