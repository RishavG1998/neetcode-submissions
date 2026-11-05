class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let numSet = Set(nums)
        var longest = 0

        for num in numSet {
            var currentNum = num
            var length = 1
            if !numSet.contains(num-1) { // Starting point
                while numSet.contains(currentNum + 1) {
                    currentNum += 1
                    length += 1
                }
                longest = max(longest, length)
            }
        }
        return longest
    }
}
