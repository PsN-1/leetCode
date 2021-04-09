class Solution {
func isValid(_ s: String) -> Bool {
    let s2 = Array(s)
    var symbols = [Character]()
    var x = 0
    
    for i in s2 {
        x += 1
        switch i {
        case "(":
            symbols.insert("(", at: 0)
            if s2[x] == ")" {
                if s.contains(")") {
                    symbols.removeFirst()
                }
            }
        case "[":
            symbols.insert("[", at: 0)
            if s2[x] == "]" {
                if s.contains("]") {
                    symbols.removeFirst()
                }
            }
        case "{":
            symbols.insert("{", at: 0)
            if s2[x] == "}" {
                if s.contains("}") {
                    symbols.removeFirst()
                }
            }

        default:
            print("error")
        }
    }
    
    
    
    // print(symbols)
    return symbols.isEmpty
}

}

