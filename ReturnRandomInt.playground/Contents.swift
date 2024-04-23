import Cocoa

func getRandomInt(numbers: [Int]?) -> Int { numbers?.randomElement() ?? Int.random(in: 1..<101) }

print(getRandomInt(numbers: [0, -1, -2, -3, -4]))
print(getRandomInt(numbers: nil))
