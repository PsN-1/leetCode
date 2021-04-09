class Solution {
    func romanToInt(_ s: String) -> Int {
            let numsConversion = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
    let romArray = Array(s)
    var intArray = [Int]()
    var result = 0
    var curr = Int()
    var next = Int()
    
    for i in romArray {
        intArray.append(numsConversion[String(i)]!)
    }
    
    for i in 0..<intArray.count {
        curr = intArray[i]
        next = (i+1) < intArray.count ? intArray[i+1] : 0

        if curr < next {
            result -= curr
        } else {
            result += curr
        }
        
    }
    return result
    }
}


