import Cocoa

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

var filteredNumbers = luckyNumbers.filter({$0 % 2 != 0})

var sortedNumbers = filteredNumbers.sorted()

var mappedNumbers = sortedNumbers.map({"\($0) is a lucky number"})

for number in mappedNumbers {
    print(number)
}



