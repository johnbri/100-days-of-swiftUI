import Cocoa

class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    init() {
        super.init(legs: 4)
    }
    
    func speak() -> String {
        return "Woof!"
    }
}

class Corgi: Dog {
    override func speak() -> String {
        return "Yip!"
    }
}

class Poodle: Dog {
    override func speak() -> String {
        return "Arf arf!"
    }
}

class Cat: Animal {
    let isTame: Bool
    
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(legs: 4)
    }
    
    func speak() -> String {
        return "Meow!"
    }
}

class Persian: Cat {
    override func speak() -> String {
        return "Meeeoooooww!"
    }
}

class Lion: Cat {
    override func speak() -> String {
        return "ROARRRRR!"
    }
}



