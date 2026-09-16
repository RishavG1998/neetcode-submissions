class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hashMap = [Int: Int]()
        for i in 0..<nums.count {
            let complement = target - nums[i]
            if let index = hashMap[complement] {
                return [index, i]
            } else {
                hashMap[nums[i]] = i
            }
        }
        return []
    }
}
