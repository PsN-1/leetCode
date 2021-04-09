class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var nums2 = [Int]()
        
        for i in 0..<n {
            nums2.append(nums[i]) 
            nums2.append(nums[i+n])            

        }
        
        return nums2
    }
}