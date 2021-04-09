class Solution {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var solution = [Int]()
        
        for i in left...right {
            var arr = String(i).compactMap{ $0.wholeNumberValue }
            var count = 0
            
            if arr.contains(0) { continue }
            
            for j in arr {
                if i % j != 0 {
                    break      
                } else {
                    count += 1
                }
            }
            if count == arr.count {
                solution.append(i)
            }
        }
        return solution
    }
}