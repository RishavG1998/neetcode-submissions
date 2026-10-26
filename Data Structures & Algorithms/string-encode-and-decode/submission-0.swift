class Solution {

    func encode(_ strs: [String]) -> String {
        if strs.isEmpty { return "" }

        var sizes: [String] = []
        for str in strs {
            sizes.append(String(str.count))
        }

        return sizes.joined(separator: ",") + ",#" + strs.joined()
    }

    func decode(_ str: String) -> [String] {
        if str.isEmpty { return [] }

        let chars = Array(str)
        var sizes: [Int] = []
        var result: [String] = []
        var i = 0

        while chars[i] != "#" {
            let start = i
            while chars[i] != "," {
                i += 1
            }
            sizes.append(Int(String(chars[start..<i]))!)
            i += 1
        }
        i += 1
        for size in sizes {
            let substring = String(chars[i..<i+size])
            result.append(substring)
            i += size
        }
        return result

    }
}
