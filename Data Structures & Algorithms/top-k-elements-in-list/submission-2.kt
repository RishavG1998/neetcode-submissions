class Solution {
    fun topKFrequent(nums: IntArray, k: Int): IntArray {
        val countMap = mutableMapOf<Int, Int>()

        for (num in nums) {
            countMap[num] = (countMap[num] ?: 0) + 1
        }

        val numbers = countMap.keys.toMutableList()

        return countMap.keys
        .sortedByDescending { countMap[it]!! }
        .take(k)
        .toIntArray()
    }
}
