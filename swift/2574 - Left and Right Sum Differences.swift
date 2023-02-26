class Solution {
    func leftRigthDifference(_ nums: [Int]) -> [Int] {
        var sumArray = [nums[0]]
        for i in 1..<nums.count {
            sumArray.append(sumArray[i-1] + nums[i])
        }

        var answer = sumArray

        for i in 0..<answer.count {
            let leftSum = i > 0 ? sumArray[i-1] : 0
            let rightSum = i == answer.count-1 ? 0 : sumArray[sumArray.count-1] - sumArray[i]

            answer[i] = abs(leftSum-rightSum)
        }
        return answer
    }
}
