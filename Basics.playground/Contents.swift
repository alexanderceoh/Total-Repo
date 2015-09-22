//: Playground - noun: a place where people can play

import UIKit

enum OperationType: String {
    
    case Addition = "+"
    case Subtraction = "-"
    case Multiplication = "x"
    case Division = "/"
    case Modulo = "%"
    
}




func calculateNumbers(n1 n1: Double, n2: Double, operation: OperationType) -> Double
    {
    
    switch operation {
        
    case .Addition : return n1 + n2
    case .Subtraction : return n1 - n2
    case .Multiplication : return n1 * n2
    case .Division : return n1 / n2
    case .Modulo : return n1 % n2
        
    }

}

calculateNumbers(n1: 7, n2: 8, operation: .Multiplication)




















func addNumber(n1: Int, andNumber n2: Int) -> Int {
    
    return n1 + n2
}

let value = addNumber(5, andNumber:7)

let name: String = "alex"

