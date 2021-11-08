class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        if let index = nums.firstIndex(of: target) { return index }
        if target < nums[0] { return 0 }
        if target > nums[nums.count-1] { return nums.count }
        
        for i in 0..<nums.count {
            if (target > nums[i]) && (target < nums[i+1]) {
             return i+1
            }
        }
        return 0
    }
}
