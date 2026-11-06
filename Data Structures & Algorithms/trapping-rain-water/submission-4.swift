class Solution {
    func trap(_ height: [Int]) -> Int {

        var l = 0
        var r = height.count - 1
        var maxVol = 0
        var leftMax = height[l]
        var rightMax = height[r]

        while l < r {
            if leftMax < rightMax {
                l += 1
                leftMax = max(leftMax, height[l])
                maxVol += leftMax - height[l]
            } else {
                r -= 1
                rightMax = max(rightMax, height[r])
                maxVol += rightMax - height[r]
            }
        }
        return maxVol




        // Using Stack
        // if height.isEmpty { return 0 }

        // var stack = [Int]()
        // var maxVol = 0

        // for i in 0..<height.count {
        //     while !stack.isEmpty && height[i] >= height[stack.last!] {
        //         let mid = height[stack.removeLast()]
        //         if !stack.isEmpty {
        //             let r = height[i]
        //             let l = height[stack.last!]
        //             let h = min(l, r) - mid
        //             let w = i - stack.last! - 1
        //             maxVol += h * w

        //         }
        //     }
        //     // we append index because using index we can find both height and width
        //     stack.append(i)
        // }

        // return maxVol





        // if height.isEmpty { return 0 }

        // let n = height.count
        // var leftMax = [Int](repeating: 0, count: n)
        // var rightMax = [Int](repeating: 0, count: n)

        // leftMax[0] = height[0]
        // for i in 1..<n {
        //     leftMax[i] = max(leftMax[i-1], height[i])
        // }

        // rightMax[n-1] = height[n-1]

        // for i in stride(from: n-2, through: 0, by: -1) {
        //     rightMax[i] = max(rightMax[i+1], height[i])
        // }
        // var maxAr = 0
        // for i in 0..<n {
        //     maxAr += min(leftMax[i], rightMax[i]) - height[i]
        // }
        // return maxAr

        // For continuous biggest pit
        // var maxPit = 0
        // var currentMax = 0
        // for i in 0..<n {
        //     let water = min(leftMax[i], rightMax[i]) - height[i]

        //     if water > 0 {
        //         currentMax += water
        //     } else {
        //         maxPit = max(maxPit, currentMax)
        //         currentMax = 0
        //     }
        // }
        // return maxPit
        






        // if height.isEmpty { return 0 }
        // let n = height.count
        // var maxAr = 0

        // for i in 0..<n {
        //     var lMax = height[i]
        //     var rMax = height[i]

        //     for j in 0..<i  {
        //         lMax = max(lMax, height[j])
        //     }
        //     for j in i+1..<n {
        //         rMax = max(rMax, height[j])
        //     }
        //     maxAr += min(lMax, rMax) - height[i]
        // }

        // return maxAr
    }
}
