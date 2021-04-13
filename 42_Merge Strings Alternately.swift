class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var w1 = Array(word1)
        var w2 = Array(word2)
        var arr = [String]()
        var solution = ""
        
        var count = max(w1.count, w2.count)
        
        for i in 0..<(count) {
            if i < w1.count {
                arr.append("\(w1[i])")
            }
            if i < w2.count {
                arr.append("\(w2[i])")
            } 
        }
        
        for i in arr {
            solution += "\(i)"
        }
        
        return solution
    }
}
