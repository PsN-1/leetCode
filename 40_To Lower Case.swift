class Solution {
    func toLowerCase(_ str: String) -> String {
        var solution = ""

        for i in str {
            let j = i.asciiValue!
            
            if j >= 65 && j <= 90{
                solution += String(UnicodeScalar(UInt8(j) + 32))
            } else {
                
                solution += "\(i)"
            }
        }

        return solution
    }
}