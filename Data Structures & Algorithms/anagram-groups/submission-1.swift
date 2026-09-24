class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {

        var sortedStrings = [String]()

        for str in strs {
            sortedStrings.append(String(str.sorted()))
        }

        var result = [[String]]()
        var visited = Array(repeating: false, count: strs.count)

        for i in 0..<sortedStrings.count {
            if visited[i] {
                continue
            }
             
            var cur = sortedStrings[i]
            var grp = [strs[i]]
            visited[i] = true

            for j in i+1..<sortedStrings.count {
                if sortedStrings[j] == cur {
                    grp.append(strs[j])
                    visited[j] = true
                }
            }
            result.append(grp)

        }
        return result














        
        // var sortedStrs = [String]()
        // var i = 0
        // for str in strs {
        //     sortedStrs.append(String(str.sorted()))
        //     i += 1
        // }

        // var result = [[String]]()
        // var visited = Array(repeating: false, count: strs.count)

        // for i in 0..<sortedStrs.count {

        //     if visited[i] {
        //         continue
        //     }

        //     var cur = sortedStrs[i]
        //     var group = [strs[i]]
        //     visited[i] = true

        //     for j in i+1..<sortedStrs.count {
        //         if sortedStrs[j] == cur {
        //             group.append(strs[j])
        //             visited[j] = true
        //         }
        //     }
        //     result.append(group)
        // }
        // return result

        
    }
}
