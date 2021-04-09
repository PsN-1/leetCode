class Solution {
    func maxDepth(_ s: String) -> Int {
        var array = Array(s)
        var count = 0
        var larger = 0
        
        for i in 0..<array.count {
            if array[i] == "(" {
                count += 1
                if count > larger { larger = count }
            } else if array[i] == ")" {
                count -= 1
            }
        }
        return larger
    }
}