//
//  InheritanceBirds.swift
//  FikasentaniSwift
//
//  Created by Mpilo Pillz on 2022/11/03.
//

//class Bird {
//    
//    var isFemale = true
//    
//    func layEgg() {
//        if isFemale {
//            print("Bird makes new bird in a shell")
//        }
//    }
//    func fly() {
//        print("The bird flaps its wings and lifts off into the sky")
//    }
//}
//
//class Eagle: Bird {
//    
//    func soar() {
//        print("The eagle glided in the air using air currents.")
//    }
//}
//
//// the problem with inheritence comes when we have to create a penguin or chicken that cannot fly. That time a penguin can swim. Ducks are not an issue
//
//class Penguin: Bird {
//    func swim() {
//        print("The penguin peddles through water")
//    }
//}
//
//// creating as a struct cos we wont inherit anything
//struct FlyingMuseum {
//    func flyingDemo(flyingObject: Bird) {
//        flyingObject.fly()
//    }
//}
//
//struct Airplane {
//   
//}
//
//class Aeroplane:  Bird {
//    override func fly() {
//        print("The airplane uses its enging to lift off into the air")
//    }
//}
//
//let myEagle = Eagle()
//myEagle.fly()
//myEagle.layEgg()
//myEagle.soar()
//
//let myPenguin = Penguin()
//myPenguin.layEgg()
//myPenguin.swim()
//myPenguin.fly() // that is a problem
//
//let museum = FlyingMuseum()
//museum.flyingDemo(flyingObject: myEagle)
//museum.flyingDemo(flyingObject: myPenguin) // that cant happen
//myPlane.layEgg()
//
