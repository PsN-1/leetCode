class Solution {
    func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
        var string1 = ""
        var string2 = ""
        
        for i in 0..<word1.count {
            string1 += word1[i]
        }
        for i in 0..<word2.count {
            string2 += word2[i]
        }
        
        return string1 == string2
    }
}