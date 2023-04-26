class Solution {
    func multiply(_ num1: String, _ num2: String) -> String {
        guard num1 != "0" && num2 != "0" else { return "0" }
        var (products, maxDigits) = multiplyDigits(Array(num1), Array(num2))
        padNumbersWithZeros(&products, maxDigits)
        let result = sumProducts(products)

        return String(Array(result).map { String($0) }.joined().reversed())
    }

      func multiplyDigits(_ num1: [Character], _ num2: [Character]) -> (products: [[Int]], maxDigits: Int) {
            let m = num1.count
            let n = num2.count
            var maxDigits = 0
            var products = [[Int]]()

            for i in 0..<num1.count {
                var product = [Int]()
                var carry = 0
                // Add leading zeros:
                for _ in 0..<i {
                    product.append(0)
                }

                let digit1 = num1[m-i-1].wholeNumberValue!
                
                for j in 0..<num2.count {
                    let digit2 = num2[n-j-1].wholeNumberValue!
                    let result = digit1 * digit2 + carry
                    let productRemainder = result % 10
                    carry = result / 10
                    product.append(productRemainder)
                }

                if carry > 0 { product.append(carry) }
                maxDigits = max(maxDigits, product.count)
                products.append(product)
            }

            return (products, maxDigits)
        }

        func padNumbersWithZeros(_ products: inout [[Int]], _ maxDigits: Int) {
            for i in 0..<products.count {
                let zerosToAdd = maxDigits - products[i].count
                for _ in 0..<zerosToAdd {
                    products[i].append(0)
                }
            }
        }
        

        func sumProducts(_ products: [[Int]]) -> [Int] {
            var i = 0
            var result = [Int]()
            var carry = 0

            while true {
                var sum = carry
                var didFinish = true

                for j in 0..<products.count {
                    let product = products[j]
                    if i >= product.count { continue }
                    let digit = product[i]
                    sum += digit
                    didFinish = false
                }

                if didFinish { break }
                result.append(sum % 10)
                carry = sum / 10
                i += 1
            }

            if carry > 0 { result.append(carry) }
            return result    
        }
}
