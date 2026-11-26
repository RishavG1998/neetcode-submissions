class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count { return false }

        // return s.sorted() == t.sorted()

        // var freqChars: Array<Int> = [Array](repeating: 0, count: 26)

        // for byte in s.utf8 {
        //     freqChars[122-Int(byte)] += 1
        // }

        // for byte in t.utf8 {
        //     freqChars[122-Int(byte)] -= 1

        //     if freqChars[122-Int(byte)] < 0 {
        //         return false
        //     }
        // }


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
