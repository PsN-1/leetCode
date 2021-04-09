class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var ent1 = String(x)
        var ent2 = String(ent1.reversed())
        if ent1 == ent2 {
            return true
        } else {
            return false
        }
        
    }
}
