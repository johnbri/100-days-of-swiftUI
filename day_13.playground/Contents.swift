import Cocoa

protocol building {
    var rooms: Int {get set}
    var cost: Int {get set}
    var agent: String {get set}
    func salesSummary() -> String
    
}

extension building {
    func salesSummary() -> String {
        return "This is a house with \(rooms) rooms, priced at \(cost) dollars, and sold by \(agent)."
    }
}

struct House: building {
    var rooms: Int
    var cost: Int
    var agent: String
}

struct Office: building {
    var rooms: Int
    var cost: Int
    var agent: String
}

let myHouse = House(rooms: 3, cost: 400000, agent: "John")
print(myHouse.salesSummary())
let myOffice = Office(rooms: 1, cost: 200000, agent: "Jane")
print(myOffice.salesSummary())
