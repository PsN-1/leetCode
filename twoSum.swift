class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var nums2: [Int] = []
        for i in 0..<nums.count {
            for j in i+1..<nums.count{
                if nums[j] == target - nums[i] {
                    nums2.insert(i, at: 0)
                    nums2.insert(j, at: 1)
                }
            }
        }
        return nums2
    } 
}
