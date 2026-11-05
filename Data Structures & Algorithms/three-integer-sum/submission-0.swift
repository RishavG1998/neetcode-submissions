class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {

        let nums = nums.sorted()
        var n = nums.count

        var res = [[Int]]()

        for i in 0..<n {

            if i > 0 && nums[i] == nums[i-1] { continue }

            var l = i + 1
            var r = n - 1

            while l < r {
                let sum = nums[l] + nums[r] + nums[i]
                if sum < 0 {
                    l += 1
                } else if sum > 0 {
                    r -= 1
                } else {
                    res.append([nums[i], nums[l], nums[r]])

                    l += 1
                    r -= 1

                    while l < r && nums[l] == nums[l-1] {
                        l += 1
                    }

                    while r > l && nums[r] == nums[r+1] {
                        r -= 1
                    }
                }
            }
        }
        return res
    }
}
