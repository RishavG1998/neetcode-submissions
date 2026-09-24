class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var unique = Set(nums)
        nums = Array(unique).sorted()
        return nums.count
    }
}
