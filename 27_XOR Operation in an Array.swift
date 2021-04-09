class Solution {
    func xorOperation(_ n: Int, _ start: Int) -> Int {
        var array = [Int]()
        var nums = 0
        
        for i in 0..<n {
            array.append(start + 2*i)
        }
        for i in 0..<array.count{
            nums ^= array[i]    
        }
        
        return nums
    }
}