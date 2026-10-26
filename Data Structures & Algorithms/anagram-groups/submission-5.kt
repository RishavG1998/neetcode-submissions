class Solution {
    fun groupAnagrams(strs: Array<String>): List<List<String>> {
        var groups = mutableMapOf<String, MutableList<String>>()

        for (str in strs) {
            var key = str.toCharArray().sorted().joinToString("")

            groups.getOrPut(key) {mutableListOf()}.add(str)
        }

        return groups.values.toList()
    }
}
