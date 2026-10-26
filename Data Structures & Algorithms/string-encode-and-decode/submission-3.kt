class Solution {

    fun encode(strs: List<String>): String {
        var result = StringBuilder()

        for (str in strs) {
            result.append(str.length).append("#").append(str)
        }
        return result.toString()
    }

    fun decode(str: String): List<String> {
        val result = mutableListOf<String>()
        var i = 0

        while (i < str.length) {

            // extract count of each string
            var j = i
            while (str[j] != '#') {
                j += 1
            }
            val length = str.substring(i, j).toInt()
            i = j + 1
            result.add(str.substring(i, i + length))
            i += length
        }
        return result
    }

    // fun encode(strs: List<String>): String {
    //     if (strs.isEmpty()) return ""

    //     val sizes = mutableListOf<String>()

    //     for (str in strs) {
    //         sizes.add(str.length.toString())
    //     }
    //     return sizes.joinToString(",") + "#" + strs.joinToString("")
    // }

    // fun decode(encoded: String): List<String> {
    //     if (encoded.isEmpty()) return emptyList()

    //     val parts = encoded.split("#", limit = 2)
    //     val sizes = parts[0].split(",")

    //     val result = mutableListOf<String>()

    //     var i = 0
    //     for (size in sizes) {
    //         if (size.isEmpty()) continue
    //         val length = size.toInt()
    //         result.add(parts[1].substring(i, i+length))
    //         i += length
    //     }

    //     return result
    // }
}
