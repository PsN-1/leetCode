class Solution {
    func interpret(_ command: String) -> String {
     var parser = Array(command)
        var returnParser = [Character]()
        for i in 0..<parser.count {
            if parser[i] == "(" && parser[i+1] == ")" {
                returnParser.append("o")
            } else if parser[i] == "(" && parser[i+1] == "a" {
                returnParser.append("a")
                returnParser.append("l")
            } else if parser[i] == ")" || parser[i] == "a" || parser[i] == "l"{
                continue
            } else {
                returnParser.append(parser[i])
            }
        }
        return String(returnParser)
    }
}
