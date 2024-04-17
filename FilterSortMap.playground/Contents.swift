import Cocoa

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

// print(luckyNumbers.filter({ $0 % 2 != 0 }))
// print(luckyNumbers.filter({ $0 % 2 != 0 }).sorted(by: { $0 < $1 }))
luckyNumbers.filter({ $0 % 2 != 0 }).sorted(by: { $0 < $1 }).map({ print("\($0) is a lucky number") })
