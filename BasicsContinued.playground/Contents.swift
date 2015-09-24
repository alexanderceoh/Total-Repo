//: Playground - noun: a place where people can play

import UIKit


///
/// Struct
///


var name = "Jo"

unsafeAddressOf(name)
// This is the memory address for where "Jo" is being stored

var name2 = name

unsafeAddressOf(name2)

name2.appendContentsOf("e")

name


///
/// Class
///

// NSString is a class , NSString is immutable
// NSMutableString is mutable
var name3: NSMutableString = "Jo"

unsafeAddressOf(name3)

var name4 = name3

unsafeAddressOf(name4)


// changing the actual value
name4.appendString("e")
name3


// I don't want to look at that object anymore. I want to look at another object.
// It is "pointing" to something new

name3 = "Tim"
name4


