class Solution {
    func halvesAreAlike(_ s: String) -> Bool {
        // if s.count % 2 != 0 { return false }
        
        var count1 = 0
        var count2 = 0
        
        // let sLower = s.lowercased()
        var arr = Array(s)

        let vowels = Set("aeiouAEIOU")
        
        for i in 0..<arr.count/2 {
            
            // if vowels.contains("\(arr[i])") { count1 += 1 }   
            // if vowels.contains("\(arr[arr.count/2 + i])") { count2 += 1 }
            
            count1 += vowels.contains(arr[i]) ? 1 : 0
            count2 += vowels.contains(arr[arr.count/2 + i]) ? 1 : 0
        }
        
        return count1 == count2
    }
}