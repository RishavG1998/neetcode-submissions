class Solution {

    // Prefix and Suffix
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        guard !nums.isEmpty else { return [] }
        let n = nums.count

        var pref = [Int] (repeating: 1, count: n)
        var suff = [Int] (repeating: 1, count: n)
        var result = [Int] (repeating: 1, count: n)

        pref[0] = 1
        suff[n-1] = 1

        for i in 1..<nums.count {
            pref[i] = nums[i-1] * pref[i-1]
        }

        for i in stride(from: nums.count - 2, through: 0, by: -1) {
            suff[i] = nums[i+1] * suff[i+1]
        }

        for i in 0..<nums.count {
            result[i] = pref[i] * suff[i]
        }

        return result
    }



    // Division
    // func productExceptSelf(_ nums: [Int]) -> [Int] {
        
    //     var prod = 1
    //     var countOfZeros = 0
    //     for num in nums {
    //         if num == 0 {
    //             countOfZeros += 1
    //         } else {
    //             prod *= num
    //         }
    //     }

    //     if countOfZeros > 1 {
    //         return [Int] (repeating: 0, count: nums.count)
    //     }
    //     var result = [Int] (repeating: 0, count: nums.count)

    //     for (i, num) in nums.enumerated() {
    //         if countOfZeros == 1 {
    //             result[i] = num == 0 ? prod : 0
    //         } else {
    //             result[i] = prod / num
    //         }
    //     }
    //     return result
    // }

    // Brute Force (TLE)
    // func productExceptSelf(_ nums: [Int]) -> [Int] {
    //     var result = [Int](repeating: 0, count: nums.count)

    //     for i in 0..<nums.count {
    //         var prod = 1
    //         for j in 0..<nums.count {
    //             if (j != i) {
    //                 prod *= nums[j]
    //             }
    //         }
    //         result.append(prod)
    //     }
    //     return result
    // }
}
