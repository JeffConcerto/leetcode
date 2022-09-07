class Solution {
    func reformatNumber(_ number: String) -> String {
        var cleanNumber = Array(number.filter { $0.isNumber })
        let count = cleanNumber.count
        
        var numberBlocks = [[Character]]()
        var index = 0
        
        while count - index > 4 { 
            var block = [Character]()
            for i in index..<index + 3 {
                block.append(cleanNumber[i])
            }
            
            numberBlocks.append(block)
            index += 3
        }
        
        if count - index != 4 {
            numberBlocks.append(Array(cleanNumber[index..<count]))
        } else {
            numberBlocks.append(Array(cleanNumber[index..<index + 2]))
            numberBlocks.append(Array(cleanNumber[index+2..<index+4]))
        }
            
        var result = ""
        
        for (index, block) in numberBlocks.enumerated() {
            result += block
            if index < numberBlocks.count - 1 {
                result += "-"  
            }
        }
        
        return result
    }
}
