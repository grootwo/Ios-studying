import Cocoa

enum CalculateError: Error {
    case outOfBound, notInteger
}

func findSqrt(num: Int) throws -> Int {
    if num > 10000 || num < 1 {
        throw CalculateError.outOfBound
    } else {
        for i in 1...100 {
            if i * i == num {
                return i
            }
        }
        throw CalculateError.notInteger
    }
}

let num = 3

do {
    let result = try findSqrt(num: num)
    print("\(result) is the square root of \(num)!")
} catch CalculateError.outOfBound {
    print("The number is out of bound!")
} catch CalculateError.notInteger {
    print("The result is not an integer!")
} catch {
    print("no root")
}
