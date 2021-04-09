class Solution {
    func decompressRLElist(_ nums: [Int]) -> [Int] {
        var nums2 = [Int]()
        
        for i in 0..<nums.count {
            
            if i % 2 != 0 {
                continue
            }
            
            if i+1 <= nums.count {
                
                for _ in 0..<nums[i] {
                    nums2.append(nums[i+1])
                }
            }
        }
        return nums2
    }
}
