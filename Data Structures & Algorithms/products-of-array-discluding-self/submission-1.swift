class Solution {

    // Division
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        
        var prod = 1
        var countOfZeros = 0
        for num in nums {
            if num == 0 {
                countOfZeros += 1
            } else {
                prod *= num
            }
        }

        if countOfZeros > 1 {
            return [Int] (repeating: 0, count: nums.count)
        }
        var result = [Int] (repeating: 0, count: nums.count)

        for (i, num) in nums.enumerated() {
            if countOfZeros == 1 {
                result[i] = num == 0 ? prod : 0
            } else {
                result[i] = prod / num
            }
        }
        return result
    }

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
