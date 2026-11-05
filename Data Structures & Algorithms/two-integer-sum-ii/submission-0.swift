class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var l = 0
        var r = numbers.count - 1

        while l < r {
            var currSum = numbers[l] + numbers[r]
            if currSum > target {
                r -= 1
            } else if currSum < target {
                l += 1
            } else {
                return [l+1, r+1]
            }
        }
        return []
    }
}
