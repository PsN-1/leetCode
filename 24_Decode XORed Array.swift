class Solution {
    func decode(_ encoded: [Int], _ first: Int) -> [Int] {
        var returnArray = [Int]()
        var x = first
        returnArray.append(x)
        
        for i in 0..<encoded.count {
            // if i+1<=encoded.count {
                x = encoded[i]^x
                returnArray.append(x)
            // }
        }
        return returnArray
    }
}
