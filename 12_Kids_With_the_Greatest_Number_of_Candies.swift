class Solution {
    func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var result = [Bool]()
        
        for i in 0..<candies.count {
            result.append(candies[i] + extraCandies >= candies.max()!)
        }
        return result
    }
}