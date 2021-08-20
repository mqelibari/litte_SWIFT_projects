//
//  BouncingBall.swift
//  learnSwift
//
//  Created by Fatmir Qel on 19.08.21.
//

func bouncingBall(_ heigt_of_start: Double, _ bounce_factor: Double, _ window_of_observer: Double) -> Int{
    if bounce_factor >= 1 || bounce_factor <= 0{return -1}
    if window_of_observer >= heigt_of_start {return 0}
    
    var seeing = 0
    var ball_heigt = heigt_of_start
    while ball_heigt >= window_of_observer{
        seeing += 1
        ball_heigt *= bounce_factor
    }
    
    return seeing * 2 - 1
}
