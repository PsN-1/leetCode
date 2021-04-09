class Solution {
    func subtractProductAndSum(_ n: Int) -> Int {
        var nArray = String(n).compactMap{ $0.wholeNumberValue }
        var product = 1
        var sum = 0
        
        for i in 0..<nArray.count {
            product *= nArray[i]
            sum += nArray[i]
        }
        return product - sum
    }
}