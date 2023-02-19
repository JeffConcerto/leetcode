// Faster Solution:
class Solution {
    func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }
        var level = 0
        var qstack = [root]
        var size = 1
        var result = [[Int]]()
        var currentRes = [Int]()
        var currentQStack = [TreeNode]()

        func goRight() {
            while size > 0 {
                let node = qstack.removeLast()
                currentRes.append(node.val)
                
                if let rightNode = node.right {
                    currentQStack.append(rightNode)
                }

                if let leftNode = node.left {
                    currentQStack.append(leftNode)
                }

                size -= 1
            }

            qstack += currentQStack
            result.append(currentRes)
            currentRes = [] 
            currentQStack = []
        }

        func goLeft() {
            while size > 0 {
                let node = qstack.removeLast()
                currentRes.append(node.val)
                if let leftNode = node.left {
                    currentQStack.append(leftNode)
                }

                if let rightNode = node.right {
                    currentQStack.append(rightNode)
                }

                size -= 1
            }
            qstack += currentQStack
            result.append(currentRes)
            currentRes = []
            currentQStack = []
        }

          while !qstack.isEmpty {
            if level % 2 == 0 {
                goLeft()
            } else {
                goRight()
            }
            level += 1
            size = qstack.count
        }

        return result
    }
}

// Cleaner Solution:
 class Solution {
    func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }
        var level = 0
        var qstack = [root]
        var size = 1
        var result = [[Int]]()
        var currentRes = [Int]()
        var currentQStack = [TreeNode]()

        func goRight(_ node: TreeNode) {
                if let rightNode = node.right {
                    currentQStack.append(rightNode)
                }

                if let leftNode = node.left {
                    currentQStack.append(leftNode)
                }
        }
        
        func goLeft(_ node: TreeNode) {
            if let leftNode = node.left {
                currentQStack.append(leftNode)
            }

            if let rightNode = node.right {
                currentQStack.append(rightNode)
            }
        }

          while !qstack.isEmpty {
             while size > 0 {
                let node = qstack.removeLast()
                currentRes.append(node.val)

                if level % 2 == 0 {
                    goLeft(node)
                } else {
                    goRight(node)
                }
                size -= 1
            }
            qstack += currentQStack
            result.append(currentRes)
            currentRes = []
            currentQStack = []

            level += 1
            size = qstack.count
        }

        return result
    }
}
