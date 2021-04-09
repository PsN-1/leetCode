class Solution {
    func minTimeToVisitAllPoints(_ points: [[Int]]) -> Int {
        var count = 0
        var high = 0
        
        var px = 0
        var py = 0
        
        for i in 0..<points.count {
            high = 0
            if i+1 < points.count {
                
                px = abs(points[i][0] - points[i+1][0])
                py = abs(points[i][1] - points[i+1][1])
                
                px > py ? (high = px) : (high = py)
            }
            count += high
        }
        return count
    }
}