//
//  one_counter.swift
//  learnSwift
//
//  Created by Fatmir Qel on 19.08.21.
//

import Foundation


func nbDig(_ n: Int, _ d: Int) -> Int {
    var my_array: [Int] = []
    var d_counter = 0
    var d_checker = 0
    for num in 0...n{
        my_array.append(num * num)
    }
    for element  in my_array{
        var working_num = element
        repeat{
            d_checker = working_num % 10
            working_num /= 10
            if(d_checker == d){d_counter += 1}
        }while working_num > 0
    }
    return d_counter
}


