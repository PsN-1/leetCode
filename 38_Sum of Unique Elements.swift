class Solution {
    func sumOfUnique(_ nums: [Int]) -> Int {
        var count = 0
        for i in nums {
            if isUnique(i, nums) {
                count += i
            }
        }
        return count
    }
    
    func isUnique(_ num: Int, _ nums: [Int]) -> Bool {
        var arr = nums
        arr.remove(at: arr.firstIndex(of: num)!)
        for i in arr {
            if i == num {
                return false
            }
        }
        return true
    }
}