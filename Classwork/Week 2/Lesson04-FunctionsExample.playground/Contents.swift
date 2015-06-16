// Function named myFunction that takes no parameters and returns no values

func mySimpleFunction() {
    println("Hey, I'm inside my simple function!")
}

mySimpleFunction()

func aMoreComplexFunction(number: Int) {
    for i in 1...number {
        println(i)
    }
    println("---------")
}

aMoreComplexFunction(4)
aMoreComplexFunction(6)

func hare(age: Int, name: String) {
    println("My name is \(name) and I am \(age) years old.")
    println("---------")

}

hare(35, "Dan")

func functionWithOptional(age: Int, name:String, location: String?) {
    println("My name is \(name) and I am \(age) years old.")
    
    if let location = location {
        println("...and I am from \(location)")
    }
    println("---------")

}

functionWithOptional(35, "Dan", "Washington DC")

func cat(name: String) -> String {
    
    return "My cat's name is \(name) and it goes meow!"
}

let myCat = cat("Charles")
println(cat("Charles"))
println(myCat)


func lastFunction(alpha: Int, beta: Int, name: String, decimal: Float?) {
    for number in alpha...beta {
        println("My name is \(name) and I have \(number) fingers!")
        if let decimal = decimal {
            println("I have $\(decimal) in the bank.")
        } else {
            println("I am poor!")
        }
    }
}

lastFunction(5, 10, "Dan", 25.13)
lastFunction(10, 10, "Steve", nil)

// Look into deferred intialization


