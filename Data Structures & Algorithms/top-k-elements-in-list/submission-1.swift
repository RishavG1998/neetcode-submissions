class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var countMap = [Int: Int]()

        for num in nums {
            countMap[num] = countMap[num, default: 0] + 1
        }

        var keys: [Int] = Array(countMap.keys)

        keys.sort {
            countMap[$0]! > countMap[$1]!
        }

        return Array(keys.prefix(k))
    }
}
