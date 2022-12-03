# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    
     def getMinimumDifference(self, root: Optional[TreeNode]) -> int:
            def dfsCreateArray(root: Optional[TreeNode], array):
                if root is None: return 
        
                array.append(root.val)
                dfsCreateArray(root.left, array)
                dfsCreateArray(root.right, array)
                
            def getAbsMinDifference(array) -> int:
                array.sort()
                absMin = float('inf')
                for i in range(1, len(array)):
                    difference = abs(array[i-1] - array[i])
                    absMin = min(difference, absMin)
                    
                return absMin
                
            array = []
            dfsCreateArray(root, array)
            return getAbsMinDifference(array)
