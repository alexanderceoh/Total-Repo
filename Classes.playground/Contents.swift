//: Playground - noun: a place where people can play

import UIKit

class Box {
//    this code is the blueprint, it NEVER runs
    var color: UIColor?
    var height: CGFloat = 0
    var width: CGFloat = 0
    
    func changeSize(size: CGSize) {
        
        height = size.height
        width = size.width
        
    }
}
//    Everything in the class Box() is now inside box1,box2
//    These are objects
var box1 = Box()
var box2 = Box()

box1.changeSize(CGSize(width: 10, height: 10))
box2.changeSize(CGSize(width: 20, height: 10))



class Shape {
    
    var sides: Int?
    
}

class Rectangle: Shape {
    
    override init() {
        super.init()
        
        sides = 4
        
    }
}


//This is the toilet factory
class Toilet {
    
    var color: UIColor = UIColor.lightGrayColor()
    
    class func createBigToilet() -> Toilet {
        
        let toilet = Toilet()
        
        toilet.color = UIColor.orangeColor()
        
        return toilet
        
    }
    
    init() {
        
        // creates a default toilet
        
    }
    
    var clean: Bool = true
    
    func flushToilet() {
        
        self.clean = true
        
    }
}



class Engine {
    
    var size: String?
    
}

class Seat {
    

}

class Wheel {
    
    var size: Int = 20
    var rimColor: UIColor = UIColor.darkGrayColor()
    
    
}

//var array1 = Array<Seat>()
//var array2: Array<Seat> = []
//var array3 = [Seat]()
//var array4: [Seat] = []

class Car {
    
    var engine: Engine?
    var steeringWheel: SteeringWheel?
    var seats: [Seat] = []
    var wheels: [Wheel] = []
    
    init() {
        
        wheels = [Wheel(),Wheel(),Wheel(),Wheel()]
        
        seats = [Seat(),Seat()]
    }
    
}

class SteeringWheel {
    
    var material: String?
    
}

var myCar = Car()

myCar.engine = Engine()

myCar.engine?.size = "v8"

myCar.wheels
myCar.seats












//  Computer Thinking Flow

var num1 = 1
var num2 = 2

num1 + num2


class Math {
    
    // var num1 + num2 are properties
    // Because it's in a class num1 & num2 DO NOT EQUAL zero. Until it is initialized.
    var num1: Int = 0
    var num2: Int = 0
    
    func addNumbers() -> Int {
        
        return num1 + num2
        
    }
    
    func subtractNumbers() -> Int {
        
        return num1 - num2
        
    }
}

class Human {
    
    // creating a Math() object
    var math = Math()
    
    func setNumbers() {
        
        math.num1 = 5
        math.num2 = 7
        
        self.runMath()
        // self can be either 'me' or 'you'
        // whoever the 'self' is
    }
    
    func doAddition() {
        
        let value = math.addNumbers()
        value
        
    }
    
    func doSubtraction() {
        
        let value = math.subtractNumbers()
        value
        
    }
    
    func runMath() {
        
        self.doAddition()
        self.doSubtraction()
        
    }
}

let me = Human()

me.setNumbers()

me.math.num1

let you = Human()

you.setNumbers()

you.runMath()



