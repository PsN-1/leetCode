class Solution {
    func numberOfMatches(_ n: Int) -> Int {
        var matches = 0
        var arr = n
        
        while arr > 1 {
            if arr % 2 == 0 {
                matches += arr/2
                arr /= 2
            } else {
                matches += (arr-1)/2
                arr = (arr+1) / 2
            }
        }
    return Int(matches)
    // or just return n-1
    }
}
