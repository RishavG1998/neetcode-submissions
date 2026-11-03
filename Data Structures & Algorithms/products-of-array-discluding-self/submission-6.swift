class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        guard !nums.isEmpty else { return [] }
        let n = nums.count

        var pref = [Int](repeating: 1, count: n)
        var suff = [Int](repeating: 1, count: n)
        var result = [Int](repeating: 1, count: n)

        pref[0] = 1

        for i in 1..<n {
            pref[i] = pref[i-1] * nums[i-1]
        }

        suff[n-1] = 1

        for i in stride(from: n-2, through: 0, by: -1) {
            suff[i] = suff[i+1] * nums[i+1]
        }

        for i in 0..<n {
            result[i] = pref[i] * suff[i]
        }

        return result
    }
}
