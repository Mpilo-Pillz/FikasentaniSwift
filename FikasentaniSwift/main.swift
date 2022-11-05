//
//  main.swift
//  FikasentaniSwift
//
//  Created by Mpilo Pillz on 2022/11/03.
//

protocol AdvancedLifeSupport {
//    Whom ever (class or struct) uses this protocol, to comply they must implement this function below
    func performCPR()
}

class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?
    
    func assessSituation() {
        print("Can you tell me what happened")
    }
    
    func medicalEmergency() {
//         this func will call upon the delegate whom ever it may be they do not call
//        it will say "who ever is on call whoever is carryong the pager, prlease perform CPR"
        delegate?.performCPR()
    }
}

struct Paramedic: AdvancedLifeSupport {
    // when the paramedic goes on shitf (when initialized)
    // they get told who the handler is (hndler is the emergenctCall handler
    init(handler: EmergencyCallHandler) {
        // the first thing they do is pick up the bleep
        // and set the handlers delegate property as themselves
        handler.delegate = self
        
    }
    
    func performCPR() {
        print("The paramedic does chest compressions, 30 per second.")
    }
    
    
}

class Doctor: AdvancedLifeSupport {
    
    // Doctors set themselves as the handler
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The doctor does chest compressions, 30 per second")
    }
    
    func useStethescope() {
        print("Listening for heart sounds")
    }
}

class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sings staying alive by the BeeGees")
    }
    
    func useElectricDrill() {
        print("Whirr...")
    }
}

let hlonphile = EmergencyCallHandler()
//let phetsile = Paramedic(handler: hlonphile)

let kwanele = Surgeon(handler: hlonphile)

hlonphile.assessSituation()
hlonphile.medicalEmergency() // calls deligate.performCPR
