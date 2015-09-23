//: Playground - noun: a place where people can play

import UIKit

/* Create classes

User
-name
-password
-email
-favcolor?

enum FavoriteColor

-hey(name)
-login(parameters)
-register(parameters)
-logOut()

*/



enum Favcolor : String {
    
    case Blue
    case Red
    case Yellow
    case Orange
    case Green
    
}

class User {
    
    var name: String!
    var password: String!
    var email: String!
    var favcolor: Favcolor?
    
    func sayHelloTo(name: String) {
        
        print ("\(self.name) says hi to \(name)")
        
    }
    
    func register(name: String, email: String, password: String) {
        
        self.name = name
        self.email = email
        self.password = password
        
    }
    
    func login(email: String, password: String) {
        
        
    }
    

    
    func logout() {
        
    }
    
}

// if I didn't use let me = User(), I would have created two objects when I needed only one.

let me = User()

me.register("Jo", email: "me@jo2.co", password: "asdfasdfasdf")

me.sayHelloTo("Bob")


////
//// Optionals
////

var color: String?

color = "Red"

print(color == nil)

if color != nil {
    
    print(color!)
    
}


//print("The color is " + color)
//Does not work because you cannot add a string with a conditional

print("The color is \(color)")
print("The color is \(color!)")

if let c = color {
    
    print("The color is " + c)
    
}

