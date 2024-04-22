import Cocoa

protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    var name: String
    var currentPassengers: Int
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }
    func openSunroof() {
        print("It's a nice day!")
    }
}

struct Bicycle: Vehicle {
    var name: String
    var currentPassengers: Int
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    func travel(distance: Int) {
        print("I'm cycling \(distance)km.")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

var car = Car(name: "suv car", currentPassengers: 4)
commute(distance: 100, using: car)
var bicycle = Bicycle(name: "mountain bicycle", currentPassengers: 1)
commute(distance: 20, using: bicycle)
