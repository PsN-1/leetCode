class Solution {
    func isHappy(_ n: Int) -> Bool {
        var numbers = toDigits(n)
        var sums = 0
        var count = 0
        
        while sums != 1 {
            if count > 100 { return false }
            sums = 0
            for number in numbers {
                sums += number*number 
            }
            numbers = toDigits(sums)
            count += 1
        }
        return true
    }
    
    func toDigits(_ number: Int) -> [Int] {
        String(number).utf8.map{Int($0)-48}
    }
}
