class Solution {
    func balancedStringSplit(_ s: String) -> Int {
        var array = Array(s)
        var count = 0
        var answer = 0
        
        for i in 0..<array.count {

            
            if array[i] == "L" {
                count += 1
            } else {
                count -= 1
            }
            if count == 0 {
                answer += 1
            }
        
        }
        return answer
    }
}

