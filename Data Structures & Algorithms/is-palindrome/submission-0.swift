class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var newStr = ""

        for c in s {
            if c.isLetter || c.isNumber {
                newStr.append(c.lowercased())
            }
        }
        return newStr == String(newStr.reversed())
    }
}
