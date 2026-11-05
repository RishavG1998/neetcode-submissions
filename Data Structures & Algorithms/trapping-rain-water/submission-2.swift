class Solution {
    func trap(_ height: [Int]) -> Int {
        if height.isEmpty { return 0 }

        let n = height.count
        var leftMax = [Int](repeating: 0, count: n)
        var rightMax = [Int](repeating: 0, count: n)

        leftMax[0] = height[0]
        for i in 1..<n {
            leftMax[i] = max(leftMax[i-1], height[i])
        }

        rightMax[n-1] = height[n-1]

        for i in stride(from: n-2, through: 0, by: -1) {
            rightMax[i] = max(rightMax[i+1], height[i])
        }
        var maxAr = 0
        for i in 0..<n {
            maxAr += min(leftMax[i], rightMax[i]) - height[i]
        }
        return maxAr
        






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
