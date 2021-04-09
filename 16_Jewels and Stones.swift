class Solution {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var joias = Array(jewels)
        var pedras = Array(stones)
        var count = 0
        
        for i in 0..<joias.count {
            for j in 0..<pedras.count{
                if joias[i] == pedras[j] {
                    count += 1
                }
            }
        }
        return count
    }
}