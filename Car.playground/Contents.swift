import Cocoa

struct Car {
    let model: String
    let seatCount: Int
    private var currentGear = 0
    
    init(model: String, seatCount: Int) {
        self.model = model
        self.seatCount = seatCount
        print("Initial gear is 0.")
    }
    mutating func changeGear(isUp: Bool) {
        if isUp {
            if currentGear == 10 {
                print("You can't change gear up. This is maximum!")
            } else {
                currentGear += 1
                print("Now current gear is \(currentGear)!")
            }
        } else {
                if currentGear == 0 {
                    print("You can't change gear down. This is manimum!")
                } else {
                    currentGear -= 1
                    print("Now current gear is \(currentGear)!")
                }
        }
    }
}

var newCar = Car(model: "bmw something", seatCount: 4)
newCar.changeGear(isUp: false)
newCar.changeGear(isUp: true)
