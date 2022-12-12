class Solution:
    def permute(self, nums: List[int]) -> List[List[int]]:
        storage = []

        def helper(nums: List[int], selection: List[int], storage: List[List[int]]):
            if not nums:
                storage.append(selection)
            else:
                for i in range(len(nums)):
                    helper(nums[0:i] + nums[i+1:len(nums)], selection + [nums[i]], storage)

        for i in range(len(nums)):
            helper(nums[0:i] + nums[i+1:len(nums)], [nums[i]], storage)
        
        return storage
            
