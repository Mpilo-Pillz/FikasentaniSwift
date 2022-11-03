//
//  main.swift
//  FikasentaniSwift
//
//  Created by Mpilo Pillz on 2022/11/03.
//

class Bird {
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("Bird makes new bird in a shell")
        }
    }
    func fly() {
        print("The bird flaps its wings and lifts off into the sky")
    }
}

class Eagle: Bird {
    
    func soar() {
        print("The eagle glided in the air using air currents.")
    }
}

let myEagle = Eagle()
myEagle.fly()
myEagle.layEgg()
myEagle.soar()



