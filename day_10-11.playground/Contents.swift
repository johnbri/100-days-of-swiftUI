import Cocoa

struct car {
    let model: String
    let seats: Int
    private var gear: Int
    
    init(model: String, seats: Int, gear: Int) {
        self.model = model
        self.seats = seats
        self.gear = gear
    }
    
    mutating func changeGear(value: Int) {
        let newGear = gear + value
        if newGear >= 1 && newGear <= 10 {
            gear = newGear
            print("Gear changed to: \(gear)")
        } else {
            print("Invalid gear value")
        }
        
    }
    
    func printGear() {
           print("Current gear: \(gear)")
       }
}

var myCar = car(model: "Toyota Corolla", seats: 4, gear: 1)
myCar.printGear()
myCar.changeGear(value: 2)
myCar.changeGear(value: -1)
myCar.changeGear(value: -2)

