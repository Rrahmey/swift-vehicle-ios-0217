//
//  vehicle.swift
//  swift-vehicle-lab
//
//  Created by Raquel Rahmey on 2/4/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed: Double = 0
    var heading: Double = 0
    
    init(name:String, weight: Double, maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    func goFast() {
        speed = maxSpeed
    }
    
    func halt() {
        speed = 0
    }
    
    func accelerate() {
        if speed < (0.90 * maxSpeed){
        speed += (0.10 * maxSpeed)
        }
    }
    
    func decelerate() {
        if speed >= (0.10 * maxSpeed) {
            speed -= (0.10 * maxSpeed)
        }
    }
    
    func turnRight() {
        if speed > 0 {
            if heading > 270 {
                heading = heading + 90 - 360
                speed = (speed/2)
            } else {
                heading += 90
                speed = (speed/2)
            }
        }
    }
    
    
    func turnLeft() {
        if speed > 0{
            if heading < 90 {
                heading = heading - 90 + 360
                speed = (speed/2)
            } else {
                heading -= 90
                speed = (speed/2)
            }
        }
}
}
