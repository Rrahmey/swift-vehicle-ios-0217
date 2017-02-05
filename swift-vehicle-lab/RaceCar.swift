//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by Raquel Rahmey on 2/5/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car {
    let driver: String
    var sponsors: [String]
    
    init(name: String, weight: Double, maxSpeed: Double,  transmission: String, cylinders: Int, milesPerGallon: Double,driver:String, sponsors: [String]) {
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed,transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    
    override func accelerate() {
        if speed <= (0.80 * maxSpeed){
            speed += (0.20 * maxSpeed)
        }
    }
    
    override func decelerate() {
        if speed >= (0.20 * maxSpeed){
            speed -= (0.20 * maxSpeed)
        }
    }
    
    func driftRight() {
        if speed > 0 {
            if heading > 270 {
                heading = heading + 90 - 360
                speed -= (0.25 * speed)
            } else {
            heading += 90
            speed -= (0.25 * speed)
        }
        }
    }
    
    func driftLeft() {
        if speed > 0{
            if heading < 90 {
                heading = heading - 90 + 360
                speed -= (0.25 * speed)
            } else {
            heading -= 90
            speed -= (0.25 * speed)
        }
        }
    }
    
    
    
}
