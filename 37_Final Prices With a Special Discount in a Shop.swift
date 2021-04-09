
class Solution {
    func finalPrices(_ prices: [Int]) -> [Int] {
        var fprices = prices
        
        for i in 0..<prices.count {
            for j in 0..<prices.count {
                if j > i && prices[j] <= prices[i] {
                    fprices[i] = prices[i] - prices[j]
                    break
                }
            }
        }
        return fprices
    }
}