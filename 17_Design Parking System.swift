
class ParkingSystem {

    var big: Int
    var medium: Int
    var small: Int
    
    init(_ big: Int, _ medium: Int, _ small: Int) {
        self.big = big
        self.medium = medium
        self.small = small
    }
    
    func addCar(_ carType: Int) -> Bool {
        var temp = 0
        switch carType{
            case 1:
            temp = big
            big -= 1

            case 2:
            temp = medium
            medium -= 1

            default:
           temp = small
            small -= 1
           
        }
         return temp >= 1
    }
}

/**
 * Your ParkingSystem object will be instantiated and called as such:
 * let obj = ParkingSystem(big, medium, small)
 * let ret_1: Bool = obj.addCar(carType)
 */
