//
//  main.swift
//  FikasentaniSwift
//
//  Created by Mpilo Pillz on 2022/11/03.
//

protocol CanFly {
    // for you to be able to fly you need to be able to have these methods
    func fly()
}

class Bird {
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("Bird makes new bird in a shell")
        }
    }
}

class Eagle: Bird, CanFly {
    func fly() {
        print("The Eagle flaps its wings and lifts off into the sky")
    }
    
    func soar() {
        print("The eagle glided in the air using air currents.")
    }
}

// the problem with inheritence comes when we have to create a penguin or chicken that cannot fly. That time a penguin can swim. Ducks are not an issue

class Penguin: Bird {
    func swim() {
        print("The penguin peddles through water")
    }
}

// creating as a struct cos we wont inherit anything
struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

struct Airplane: CanFly {
    func fly() {
        print("The airplane uses its enging to lift off into the air")
    }
}



let myEagle = Eagle()
myEagle.fly()
myEagle.layEgg()
myEagle.soar()

let myPenguin = Penguin()
myPenguin.layEgg()
myPenguin.swim()

let myPlane = Airplane()

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myEagle)
museum.flyingDemo(flyingObject: myPlane)
//museum.flyingDemo(flyingObject: myPenguin) // that cant happen




