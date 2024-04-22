import Cocoa

protocol Building {
    var name: String { get set }
    var rooms: Int { get set }
    var cost: Int { get set }
    var estateAgent: String { get set }
    func printSummary()
}

extension Building {
    func printSummary() {
        let summary = """
\(name):
- has \(rooms) rooms.
- costs \(cost).
- \(estateAgent) is responsible for selling here.

"""
        print(summary)
    }
}

struct House: Building {
    var name: String
    var rooms: Int
    var cost: Int
    var estateAgent: String
}

struct Office: Building {
    var name: String
    var rooms: Int
    var cost: Int
    var estateAgent: String
}

var greenHouse = House(name: "green house", rooms: 3, cost: 100_000, estateAgent: "Ms. Green")
var smallOffice = Office(name: "small office", rooms: 2, cost: 1_000_000, estateAgent: "Some Boss")
greenHouse.printSummary()
smallOffice.printSummary()
