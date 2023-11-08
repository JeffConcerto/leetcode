class Solution:
    def majorityElement(self, nums: List[int]) -> List[int]:
            
        map = defaultdict(int)
        k = len(nums) // 3
        ans = []

        for num in nums:
            map[num] += 1
            if map[num] == k+1:
                ans.append(num)

        return ans
