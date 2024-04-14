import Cocoa


// func
func waterPlants(plants: [String]) {
    for plant in plants {
        print("Water \(plant)~")
    }
}

let plants1 = ["tulip", "sunflower", "lily"]
let plants2 = ["monstera", "cherry blossom"]

waterPlants(plants: plants1)
waterPlants(plants: plants2)


// return
func getFahrenheit(celsius: Double) -> Double {
    celsius * 9 / 5 + 32
}

print(getFahrenheit(celsius: 36.5))

func count10(stop: Int) {
    for i in 1...10 {
        if i == stop {
            return
        }
        print(i)
    }
}

count10(stop: 4)
