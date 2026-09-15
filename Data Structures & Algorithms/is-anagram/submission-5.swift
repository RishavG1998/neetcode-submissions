class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        // return s.sorted() == t.sorted()

        // Hash map
        // var countS = [Character: Int]()
        // var countT = [Character: Int]()

        // let sArray = Array(s)
        // let tArray = Array(t)

        // for i in 0..<s.count {
        //     countS[sArray[i], default: 0] += 1
        //     countT[tArray[i], default: 0] += 1
        // }

        // return countS == countT

        // Hash table
        var count = [Int](repeating: 0, count: 26)
        let sArray = Array(s)
        let tArray = Array(t)

        for i in 0..<s.count {
            count[Int(sArray[i].asciiValue!) - 97] += 1
            count[Int(tArray[i].asciiValue!) - 97] -= 1
        }

        for val in count {
            if val != 0 {
                return false
            }
        }
        return true
    }
}
