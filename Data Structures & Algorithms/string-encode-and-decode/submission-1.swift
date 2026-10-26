class Solution {

    func encode(_ strs: [String]) -> String {
        return strs.map { "\($0.count)#\($0)" }.joined()
    }

    func decode(_ str: String) -> [String] {
        let chars = Array(str)
        var result: [String] = []
        var i = 0

        // Check count of characters
        while i < chars.count {

            // Find "#"
            var j = i
            while chars[j] != "#" { j += 1 }
            
            let lengthOfCurrentString = Int(String(chars[i..<j]))!

            let start = j + 1
            let end = start + lengthOfCurrentString

            result.append(String(chars[start..<end]))
            i = end
        }
        return result
    }



    // func encode(_ strs: [String]) -> String {
    //     if strs.isEmpty { return "" }

    //     var sizes: [String] = []
    //     for str in strs {
    //         sizes.append(String(str.count))
    //     }

    //     return sizes.joined(separator: ",") + ",#" + strs.joined()
    // }

    // func decode(_ str: String) -> [String] {
    //     if str.isEmpty { return [] }

    //     let chars = Array(str)
    //     var sizes: [Int] = []
    //     var result: [String] = []
    //     var i = 0

    //     while chars[i] != "#" {
    //         let start = i
    //         while chars[i] != "," {
    //             i += 1
    //         }
    //         sizes.append(Int(String(chars[start..<i]))!)
    //         i += 1
    //     }
    //     i += 1
    //     for size in sizes {
    //         let substring = String(chars[i..<i+size])
    //         result.append(substring)
    //         i += size
    //     }
    //     return result

    // }
}
