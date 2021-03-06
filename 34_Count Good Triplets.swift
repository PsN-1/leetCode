class Solution {
    func countGoodTriplets(_ arr: [Int], _ a: Int, _ b: Int, _ c: Int) -> Int {
        var count = 0
        
        for i in 0..<arr.count {
            for j in i..<arr.count {
                for k in j..<arr.count {
                    if i<j && j<k {
                        if abs(arr[i] - arr[j]) <= a {
                            if abs(arr[j] - arr[k]) <= b {
                                if abs(arr[i] - arr[k]) <= c {
                                    count += 1  
                                }
                            }
                        }
                    }
                }
            }
        }
        return count
    }
}