// Optionals
import UIKit

var y: Int? = nil

y = 10


var age: Int?


// Optional Binding

if let age = age {
    "The person is \(age) years old"
}   else {
    "The variable 'age' was not set."
}

// Forced Unwrapping

var name: String?

name!

// Can you do this?

//if let age = age ? println("age: \(age)") : println("age is not set")
