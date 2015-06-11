//let x = 0
//
//if x > 0 {
//    println("Yes, \(x) is greater than zero")
//} else {
//    println("No, \(x) is less than zero")
//}

let y = 0

if y > 0 {
    println("Yes, \(y) is greater than zero")
} else if y == 0 {
    println("WooHoo, \(y) is equal to Zero!")
} else {
    println("No, \(y) is less than zero")
}

var z = 0
while z < 10 {
    println("Hey! Here is \(z)")
    ++z
}

for i in 1...10 {
    println("Print the current iteration: \(i)")
}
