class Solution {
    func largestAltitude(_ gain: [Int]) -> Int {
        var high = 0
        var count = 0
        
        for i in 0..<gain.count {
            high += gain[i]
            if high > count {
                count = high
            }
        }
        return count
    }
}
