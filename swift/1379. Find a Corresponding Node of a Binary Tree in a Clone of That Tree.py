#Python - No Swift available:

# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    def getTargetCopy(self, original: TreeNode, cloned: TreeNode, target: TreeNode) -> TreeNode:
        foundTarget = None
        
        def seekTarget(root: TreeNode, target: TreeNode):
            if root == None:
                return 
            
            seekTarget(root.left, target)
            
            if root.val == target.val:
                self.foundTarget = root
                return
            
            seekTarget(root.right, target)
        
        seekTarget(cloned, target)
        
        return self.foundTarget
