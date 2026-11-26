class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        // var mp = [Int: Int]()

        // for num in nums {
        //     if mp[num] != nil {
        //         return true
        //     }
        //     mp[num] = 1
        // }
        // return false


        return Set(nums).count != nums.count
    }
}
