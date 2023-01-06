class Solution {
    func simplifyPath(_ path: String) -> String {
        var result = ""
        var path = Array(path)

        var i = 0

        while i < path.count {
            print(result)
            // Check if part of name:
            if (i > 1 && path[i-1] != "/") && path[i] != "/" {
                result.append(path[i])
                i += 1
            } 
            // Check for "/":
            else if path[i] == "/" {
                if i != path.count-1 && !(i > 0 && result.last! == "/") { // i is not last char and i before was not "/":
                    result.append("/")
                }
                i += 1
            }
            // Check ".":
            else if path[i] == "." {
                // check if triple period:
                if i < path.count-2 && path[i+1] == "." && path[i+2] == "." {
                    result.append("...")
                    i += 3
                } else if i < path.count-1 && path[i+1] == "." { // check for double period:
                    // Check if double period is part of name:
                    if i < path.count-2 && path[i+2] != "/" {
                        result.append("..")
                        i += 2
                        continue
                    }
                    var doubleSlash = ""
                    var reverseIndex = result.count-1
                    var resultArray = Array(result)
                    while doubleSlash != "//" && reverseIndex > 0 && result.count > 1 {
                        if resultArray[reverseIndex] == "/" {
                            doubleSlash.append("/")
                        }
                        result.removeLast()
                        reverseIndex -= 1
                    }
                    i += 2
                } else { // Is a single period:
                    // check if part of name:
                    if i < path.count-1 && path[i+1] != "/" {
                        result.append(".")
                        i += 1
                    } else {
                        i += 1
                    }
                }
            } else { // Is not one of the rules:
             result.append(path[i])
             i += 1
            }
        }

        if result.count > 1 && result.last! == "/" {
            result.removeLast()
        }

        return !result.isEmpty ? result : "/"
    }
}
