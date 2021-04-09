class Solution {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var count = 0
        
        for i in 0..<nums.count {
            for j in 0..<nums.count {
                if nums[i] == nums[j] && i < j {
                    count += 1
                }
            }
            
        }
        return count
    }
}