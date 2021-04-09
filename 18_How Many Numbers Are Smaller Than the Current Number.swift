class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        var counts = [Int]()
        var count = 0
        
        for i in 0..<nums.count{
            count = 0
            for j in 0..<nums.count {
                
                if nums[j] < nums[i] && j != i {
                    count += 1
                }
            }
            counts.append(count)
        }
        return counts
    }
}