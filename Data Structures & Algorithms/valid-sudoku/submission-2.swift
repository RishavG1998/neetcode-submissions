class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var rows = [Int](repeating: 0, count: 9)
        var cols = [Int](repeating: 0, count: 9)
        var squares = [Int](repeating: 0, count: 9)

        for r in 0..<9 {
            for c in 0..<9 {
                if board[r][c] == "." { continue }

                let val = Int(board[r][c].asciiValue! - Character("0").asciiValue!)

                let bitmask = 1 << (val - 1)

                if (rows[r] & bitmask) != 0 { return false }
                if (cols[c] & bitmask) != 0 { return false }

                if (squares[(r/3) * 3 + (c/3)] & bitmask) != 0 { return false }

                rows[r] |= bitmask
                cols[c] |= bitmask
                squares[(r/3) * 3 + (c/3)] |= bitmask
                
            }
        }
        return true





        // var cols = [Int: Set<Character>]()
        // var rows = [Int: Set<Character>]()
        // var squares = [String: Set<Character>]()

        // for r in 0..<9 {
        //     for c in 0..<9 {
        //         if board[r][c] == "." { continue }

        //         let squareKey = "\(r / 3),\(c / 3)"
        //         if rows[r]?.contains(board[r][c]) == true || 
        //             cols[c]?.contains(board[r][c]) == true ||
        //             squares[squareKey]?.contains(board[r][c]) == true {
        //                 return false
        //         }

        //         rows[r, default: []].insert(board[r][c])
        //         cols[c, default: []].insert(board[r][c])

        //         squares[squareKey, default: []].insert(board[r][c])
        //     }
        // }
        // return true



        // for row in 0..<9 {
        //     var seen = Set<Character>()
        //     for i in 0..<9 {
        //         if board[row][i] == "." {continue}
        //         if seen.contains(board[row][i]) { return false }
        //         seen.insert(board[row][i])
        //     }
        // }

        // for column in 0..<9 {
        //     var seen = Set<Character>()
        //     for i in 0..<9 {
        //         if board[i][column] == "." { continue }
        //         if seen.contains(board[i][column]) { return false }
        //         seen.insert(board[i][column])
        //     }
        // }

        // for square in 0..<9 {
        //     var seen = Set<Character>()
        //     for i in 0..<3 {
        //         let row = (square / 3) * 3 + i
        //         for j in 0..<3 {
        //             let column = (square % 3) * 3 + j
        //             if board[row][column] == "." { continue }
        //             if seen.contains(board[row][column]) { return false }
        //             seen.insert(board[row][column])
        //         }
        //     }
        // }
        // return true
    }
}
