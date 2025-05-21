import Cocoa

enum calcError: Error {
    case outOfBounds, noRoot
}

func squareRoot(_ int: Int) throws -> String {
    if int < 0 || int > 100000 {
        throw calcError.outOfBounds
    }
    
    for i in 1...int {
        if i*i == int {
            return "\(i)"
        }
    }

    throw calcError.noRoot
}

do {
    let result = try squareRoot(2323)
    print("Success: \(result)")
} catch calcError.outOfBounds {
    print("Error: Out of bounds")
} catch calcError.noRoot {
    print("Error: No root")
}
