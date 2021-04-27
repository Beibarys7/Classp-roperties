import UIKit

var str = "Hello, playground"

class Car {
    
    //properties
    let products: Int
    let people: Int
    let pets: Int
    class var selfWeight: Int { return 1500 }
    class var maxWeght: Int { return 2000 }
    
    // computed properties
    var totalWeight: Int {
        return products + people + pets + Car.selfWeight
    }
    // initializer
    init(products: Int, people: Int, pets: Int) {
        self.products = products
        self.people = people
        self.pets = pets
    }
}

let car = Car(products: 30, people: 500, pets: 50)
car.totalWeight

let totalWeight = car.totalWeight
let carWeight = Car.selfWeight
let maxWeight = Car.maxWeght
if maxWeight < totalWeight {
    print(" You can't drive a car because car overloaded:\(totalWeight - maxWeight)")
} else {
    print(" You can drive!")
}
