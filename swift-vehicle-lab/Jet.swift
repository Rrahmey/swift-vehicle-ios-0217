//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Raquel Rahmey on 2/5/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation
class Jet: Plane {
    
    override func climb() {
        if altitude > 0 && altitude <= (0.80 * maxAltitude) && speed > 0{
            altitude += (0.20 * maxAltitude)
            decelerate()
        }
    }
    
    override func dive() {
        if altitude > 0 && altitude >= (0.20 * maxAltitude) && speed > 0{
            altitude -= (0.20 * maxAltitude)
            accelerate()
        }
    }
    
    func afterburner() {
        if speed == maxSpeed && altitude > 0 {
            speed = 2 * maxSpeed
        }
    }

    
    
    
}
