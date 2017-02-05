//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Raquel Rahmey on 2/5/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation
class Plane: Vehicle {
    let maxAltitude: Double
    var altitude: Double = 0
    var inFlight: Bool {
        var inflightreturn = Bool()
        if speed > 0 && altitude > 0 {
            inflightreturn = true
        }
        return inflightreturn
    }
    
    init( name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    
    
    func takeoff() {
        if altitude == 0 {
            speed += (0.10 * maxSpeed)
            altitude += (0.10 * maxAltitude)
        }
    }
    
    func land() {
        speed = 0
        altitude = 0
    }
    
    func climb() {
        if altitude > 0 && altitude <= (0.90 * maxAltitude){
            altitude += (0.10 * maxAltitude)
            decelerate()
        }
    }
    
    func dive() {
        if altitude > 0 && altitude >= (0.10 * maxAltitude){
            altitude -= (0.10 * maxAltitude)
            accelerate()
        }
    }
    
    func bankRight() {
        if altitude > 0 && speed > 0 {
            if heading > 315 {
                heading = heading + 45 - 360
                speed -= (0.10 * speed)
            } else {
            heading += 45
            speed -= ( 0.10 * speed)
        }
        }
    }
    
    func bankLeft() {
        if altitude > 0 && speed > 0 {
            if heading < 45 {
                heading = heading - 45 + 360
                speed -= ( 0.10 * speed)
            } else {
            heading -= 45
            speed -= ( 0.10 * speed)
        }
        }
    }
    
    
    
}
