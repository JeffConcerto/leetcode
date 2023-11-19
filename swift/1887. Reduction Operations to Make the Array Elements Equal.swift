class Solution {
    func reductionOperations(_ nums: [Int]) -> Int {
        var nums = nums.sorted()
        if nums[0] == nums[nums.count-1] {
            return 0
        }

        var numCount = [Int:Int]()

        for num in nums {
            numCount[num, default:0] += 1
        }

        var i = nums.count-1
        var operations = 0

        while nums[i] != nums[0] {
            let number = nums[i]
            let maxValues = numCount[nums[i]]!
            
            operations += maxValues

            var j = i
            while nums[i] == nums[j] {
                j -= 1
            }

            numCount[nums[j]]! += maxValues
            while i > 0 && nums[i] == number {
                i -= 1
            }
        }

        return operations



    }
}

// BRUTE FORCE:
// class Solution {
//     func reductionOperations(_ nums: [Int]) -> Int {
//         var nums = nums.sorted()
//         if nums[0] == nums[nums.count-1] {
//             return 0
//         }
//         let finalSum = nums[0] * nums.count
//         var currentSum = nums.reduce(0,+)

//         var i = nums.count-1
//         var j = nums.count-1
//         var operations = 0

//         while currentSum != finalSum {
//             while nums[j] == nums[i] { j -= 1 }
//             let diff = nums[i] - nums[j]
//             currentSum -= diff
//             nums[i] = nums[j]
//             operations += 1
//             if nums[i] == nums[0] {
//                 i -= 1
//                 j = i-1
//             }
//         }

//         return operations
//     }
// }
