import Cocoa

func waterPlants(plants: [String]) {
    for plant in plants {
        print("Water \(plant)~")
    }
}

let plants1 = ["tulip", "sunflower", "lily"]
let plants2 = ["monstera", "cherry blossom"]

waterPlants(plants: plants1)
waterPlants(plants: plants2)
