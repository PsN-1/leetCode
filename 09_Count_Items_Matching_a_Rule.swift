class Solution {
    
    func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
        var count = 0
        var key = 0
        
        switch ruleKey {
        case "type":
        key = 0
        case "color":
        key = 1
        default:
        key = 2
        }
         
            for i in 0..<items.count {
                 if items[i][key] == ruleValue {
                     count += 1
                 }
            }
        return count
    }

}
