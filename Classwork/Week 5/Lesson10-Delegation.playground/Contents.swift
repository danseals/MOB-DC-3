protocol Automotive {
    func drive()
    func honk()
    func turnOnLights()
}

class Car: Automotive {
    func drive() {
        
    }
    
    func honk() {
        
    }
    
    func turnOnLights() {
        
    }
}

class Train: Automotive {
    func drive() {
        
    }
    func honk() {
        
    }
    
    func turnOnLights() {
        
    }
}




// Delegation

/**************Country.swift***********/

protocol Delegate {
    func startAWar()
    func makePeace()
    
}

class Country {
    
    var delegate: Spokesperson?
    
    func causeProblems() {
        if let delegate = delegate {
            delegate.startAWar()
        }
    }
    
    func fixProblems() {
        if let delegate = delegate {
            delegate.makePeace()
        }
    }
    
}

/**************************************/


class Spokesperson: Delegate {
    
    func startAWar() {
        
    }
    
    func makePeace() {
        
    }
    
}

let handy = Spokesperson()
let france = Country()

france.delegate = handy

