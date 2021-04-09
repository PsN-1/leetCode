class Solution {
    func numberOfSteps (_ num: Int) -> Int {
        var steps = 0
        var x = num    
        while x > 0 {
            if x % 2 == 0 {
                x = x / 2
                steps += 1
            } else {
                x -= 1
                steps += 1
            }

        }
        
        return steps
    }
}