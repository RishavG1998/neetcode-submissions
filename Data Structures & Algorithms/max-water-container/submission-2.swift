class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        
        var l = 0
        var r = heights.count - 1
        var maxAr = 0

        while l < r {
            let curMax = min(heights[l], heights[r]) * (r-l)
            maxAr = max(maxAr, curMax)

            if heights[l] <= heights[r] {
                l += 1
            } else {
                r -= 1
            }
        }

        return maxAr





        // Brute Force

        // var maxAr = 0

        // for i in 0..<heights.count-1 {
        //     var dist = 1
        //     var currMax = 0
        //     for j in i+1..<heights.count {
        //         let minHeight = min(heights[i], heights[j])
        //         currMax = minHeight * dist
        //         dist += 1
        //         maxAr = max(maxAr, currMax)
        //     }
        // }
        // return maxAr
    }
}
