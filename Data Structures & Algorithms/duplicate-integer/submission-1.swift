class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        // var numsHashMap: [Int: Int] = [:]

        // for num in nums {
        //     if numsHashMap[num] != nil {
        //         return true
        //     } else {
        //         numsHashMap[num] = 1
        //     }
        // }
        // return false

        var numsSet = Set<Int>()
        for num in nums {
            if numsSet.contains(num) {
                return true
            } else {
                numsSet.insert(num)
            }
        }
        return false
    }
}
