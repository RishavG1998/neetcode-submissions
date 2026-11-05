class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var mp = [Int: Int]()
        var res = 0

        for num in nums {
            if mp[num] == nil {
                let left = mp[num-1] ?? 0
                let right = mp[num+1] ?? 0
                let length = left + right + 1

                mp[num] = length
                mp[num - left] = length
                mp[num + right] = length

                res = max(res, length)
            }
        }
        return res


        // let numSet = Set(nums)
        // var longest = 0

        // for num in numSet {
        //     var currentNum = num
        //     var length = 1
        //     if !numSet.contains(num-1) { // Starting point
        //         while numSet.contains(currentNum + 1) {
        //             currentNum += 1
        //             length += 1
        //         }
        //         longest = max(longest, length)
        //     }
        // }
        // return longest
    }
}
