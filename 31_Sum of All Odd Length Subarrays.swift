class Solution {
    func sumOddLengthSubarrays(_ arr: [Int]) -> Int {
        var sum = 0

        for i in 1...arr.count {
            if i%2 != 0 {
                for j in 0..<arr.count{
                    for k in 0..<i {
                        if i+j <= arr.count {
                            sum += arr[k+j]
                        }
                    }
                }
            }
        }
        return sum
    }
}