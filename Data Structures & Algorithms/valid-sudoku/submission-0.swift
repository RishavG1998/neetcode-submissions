class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        for row in 0..<9 {
            var seen = Set<Character>()
            for i in 0..<9 {
                if board[row][i] == "." {continue}
                if seen.contains(board[row][i]) { return false }
                seen.insert(board[row][i])
            }
        }

        for column in 0..<9 {
            var seen = Set<Character>()
            for i in 0..<9 {
                if board[i][column] == "." { continue }
                if seen.contains(board[i][column]) { return false }
                seen.insert(board[i][column])
            }
        }

        for square in 0..<9 {
            var seen = Set<Character>()
            for i in 0..<3 {
                let row = (square / 3) * 3 + i
                for j in 0..<3 {
                    let column = (square % 3) * 3 + j
                    if board[row][column] == "." { continue }
                    if seen.contains(board[row][column]) { return false }
                    seen.insert(board[row][column])
                }
            }
        }
        return true
    }
}
