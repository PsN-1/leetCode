class Solution {
    func reverse(_ x: Int) -> Int {
    //var x = 123

        let y = String(x)
        var z = String(y.reversed())
        if z.last == "-" {
            z.remove(at: z.index(before: z.endIndex))
            z.insert("-", at: z.startIndex)
        }
        let a = Int(z)
        if abs(a!) > Int32.max {
// or if a! > Int32.max || a! < Int32.min
            return 0
        }
        return a!
    }
}
