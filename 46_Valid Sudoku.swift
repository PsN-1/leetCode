class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        for i in 0..<board.count {
            for j in 0..<board.count {
                guard let col = Int(String(board[i][j])) else { continue }
                if !chkAleatorio(i,j,col,board) {
                    return false
                }
            }
        }
        return true
    }
    
    func chkAleatorio(_ i: Int, _ j: Int, _ valorAleatorio: Int, _ col: [[Character]]) -> Bool {
        for a in 0...8 {
            if a == i { continue }
            if col[a][j] == Character(String(valorAleatorio)) {
                return false
            }
        }
        for b in 0...8 {
            if b == j { continue }
            if col[i][b] == Character(String(valorAleatorio)) {
                return false
            }
        }
        for c in defQuadrante(i){
            for d in defQuadrante(j){
                if c == i && d == j { continue }
                if col[c][d] == Character(String(valorAleatorio)) {
                    return false
                }
            }
        }
        return  true
    }
    
    func defQuadrante(_ x: Int) -> ClosedRange<Int> {
        switch x {
        case 0...2: return 0...2
        case 3...5: return 3...5
        case 6...8: return 6...8
        default:    return 0...0
        }
    }
}
