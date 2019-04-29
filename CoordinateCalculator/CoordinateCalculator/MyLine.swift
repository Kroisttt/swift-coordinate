//
//  MyLine.swift
//  CoordinateCalculator
//
//  Created by 이진영 on 25/04/2019.
//  Copyright © 2019 Codesquad Inc. All rights reserved.
//

import Foundation

struct MyLine: Drawable, Measurable {
    private(set) var pointA: MyPoint
    private(set) var pointB: MyPoint
    var value: Double
    var unit: String
    
    func measure() -> Double {
        let x = pow(Double(pointA.x - pointB.x), 2)
        let y = pow(Double(pointA.y - pointB.y), 2)
        
        return sqrt(x + y)
    }
    
    func point() -> [MyPoint] {
        let linePoint = [pointA, pointB]
        
        return linePoint
    }
    
    init(pointA: MyPoint, pointB: MyPoint) {
        self.pointA = pointA
        self.pointB = pointB
        value = 0
        unit = ""
            
        value = measure()
        unit = MeasurableUnit.line.rawValue
    }
}
