class Solution {
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        var string = Array(s)
        var returnString: Array<Character> = Array(repeating: "A", count: indices.count)
        
        for i in 0..<indices.count {
            returnString[indices[i]] = string[i] 
        }
        return String(returnString)
    }
}


