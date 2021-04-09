class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var sums = [Int]()
        var pNumber = 0
        
        for i in 0..<nums.count {
            sums.append(nums[i] + pNumber)
            pNumber += nums[i]
        }
        
        
        return sums
    }
}