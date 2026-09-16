class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // var hashMap = [Int: Int]()
        // for i in 0..<nums.count {
        //     let complement = target - nums[i]
        //     if let index = hashMap[complement] {
        //         return [index, i]
        //     } else {
        //         hashMap[nums[i]] = i
        //     }
        // }
        // return []


        var i = 0
        var j = nums.count - 1

        var sortedNums = nums.enumerated().sorted {
            $0.element < $1.element
        }

        while (i < j) {
            let sum = sortedNums[i].element + sortedNums[j].element
            if (sum == target) {
                if sortedNums[i].offset < sortedNums[j].offset {
                    return [sortedNums[i].offset, sortedNums[j].offset]
                } else {
                    return [sortedNums[j].offset, sortedNums[i].offset]
                }
            } else {
                if (sum < target) {
                    i += 1
                } else {
                    j -= 1
                }
            }
        }
        return []
    }
}
