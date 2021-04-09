class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var richestMan = 0
        
        for i in 0..<accounts.count {
            if accounts[i].reduce(0, +) >= richestMan {
                richestMan = accounts[i].reduce(0, +)
            }
        }
        return richestMan
    }
}