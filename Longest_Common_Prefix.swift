class Solution {
func longestCommonPrefix(_ strs: [String]) -> String {
    if  (strs.count == 0) {return ""}
    var strPre = ""
    var strPre2 = ""
    var strPre3 = ""
    var Pre3 = 0


        for i in strs[0] {
            // Go through all the letters of the first string
            strPre += "\(i)"
            // print("strPre: " + strPre)
    
    //        print(strPre)
                Pre3 = 0
                for j in 1..<strs.count {
                    // strPre2 = strs[j]
                    // print("strPre2: \(strPre2)")
//                    print(strPre2.hasPrefix(strPre))
                    if strs[j].hasPrefix(strPre) {
                        Pre3 += 1
                    }
                }
            if Pre3 == strs.count-1 {
                strPre3 = strPre
            }
        }

    return strPre3
}
}
