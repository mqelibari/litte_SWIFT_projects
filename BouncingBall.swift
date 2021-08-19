//
//  BouncingBall.swift
//  learnSwift
//
//  Created by Fatmir Qel on 19.08.21.
//

import Foundation

func bouncingBall(_ h: Double, _ bounce: Double, _ window: Double) -> Int{
    if bounce >= 1 || bounce <= 0{return -1}
    if window >= h {return 0}
    
    var seeing = 0
    var ball_heigt = h
    while ball_heigt >= window{
        seeing += 1
        ball_heigt *= bounce
    }
    
    return seeing * 2 - 1
}
