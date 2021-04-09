class Solution {
    func checkIfExist(_ arr: [Int]) -> Bool {
        
        for i in 0..<arr.count {
            for j in 0..<arr.count {
                if i != j && j < arr.count {
                    if  arr[i] == 2 * arr[j] {
                        return true
                    }
                }
            }
        }
        return false
    }
}