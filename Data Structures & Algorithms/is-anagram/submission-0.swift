class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var sortedS = s.sorted()
        var sortedT = t.sorted()

        return sortedS == sortedT
    }
}
