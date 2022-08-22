// Method 1

class Solution {
    func finalPrices(_ prices: [Int]) -> [Int] {
        var result = [Int]()
        
        for index in 0..<prices.count {
            let price = prices[index]
            var discountFound = false
            
            for j in index + 1..<prices.count {
                if prices[j] <= price { 
                    result.append(price - prices[j])
                    discountFound = true
                    break
                } 
            } 
            
            if !discountFound {
                if prices.last! <= price && index != prices.count - 1 {
                    result.append(price - prices.last!)
                } else {
                    result.append(price)
                } 
            } 
        }
        
        return result
    }
}


// Clean Method 1

class Solution {
    func finalPrices(_ prices: [Int]) -> [Int] {
        var result = [Int]()
        
        for index in 0..<prices.count {
            var price = prices[index]
            
            for j in index + 1..<prices.count {
                if prices[j] <= price { 
                    price -= prices[j]
                    break
                } 
            } 
                
           result.append(price)
        }
        
        return result
    }
}
