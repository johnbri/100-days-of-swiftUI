import Cocoa

let numbers: [Int]? = nil

let integer: Int = numbers?.randomElement() ?? Int.random(in: 1...100)
