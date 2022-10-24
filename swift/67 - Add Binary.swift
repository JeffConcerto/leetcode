class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        let string1 = Array(a)
        let string2 = Array(b)
        
        var addedString = ""
        var i = string1.count - 1
        var j = string2.count - 1
        
        var carry = false
        
        while i >= 0 && j >= 0 {
            if string1[i] == "1" && string2[j] == "1" {
                if carry { 
                    addedString = "1" + addedString
                } else {
                    addedString = "0" + addedString
                    carry = true
                }
            } else if (string1[i] == "1" && string2[j] == "0") || 
                    (string1[i] == "0" && string2[j] == "1") {
                        if carry {
                          addedString = "0" + addedString
                        } else {
                            addedString = "1" + addedString
                        }
                    }
            else {
                if carry {
                    addedString = "1" + addedString
                } else {
                 addedString = "0" + addedString   
                }
                
                carry = false
            }
            i -= 1
            j -= 1
        }
        
        if i >= 0 {
            while i >= 0 {
                if string1[i] == "1"{
                    if carry {
                        addedString = "0" + addedString
                    } else {
                        addedString = "1" + addedString
                    }
                } else {
                    if carry {
                     addedString = "1" + addedString
                        carry = false
                    } else {
                        addedString = "0" + addedString
                    }
                }
                i -= 1
            }
        }
        
             if j >= 0 {
            while j >= 0 {
                if string2[j] == "1"{
                    if carry {
                        addedString = "0" + addedString
                        
                    } else {
                        addedString = "1" + addedString
                    }
                } else {
                    if carry {
                     addedString = "1" + addedString
                        carry = false
                    } else {
                        addedString = "0" + addedString
                    }
                }
             j -= 1
            }
        }
        
        if carry { addedString = "1" + addedString}
        
        return addedString
        
        
    }
}
