class Solution {
    func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
        var count = 0
     
        var arr = Array(allowed)
        
        for i in 0..<words.count {
            // if words[i].contains(allowed) { count += 1 }
            var count2 = 0
            for j in words[i] {
                for k in 0..<arr.count {
                    if j == arr[k] { count2 += 1}
                }                
            }
            if count2 == words[i].count { count += 1}
        }
        return count
    }
}