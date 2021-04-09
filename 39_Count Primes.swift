import Foundation
class Solution {
    func countPrimes(_ n: Int) -> Int {
        var count = 0

        for i in 0..<n {
            if ePrimo(i) {
                count += 1
            }
        }
        
        return count
    }
    
    func ePrimo(_ num: Int) -> Bool {
        if num == 2 || num == 3 { return true }
        if num < 2 { return false }
        
        for i in 2...Int(sqrt(Double(num))) {
            if num % i == 0 {
                return false 
            }
        }
        return true
    }
}