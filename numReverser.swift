//
//  numReverser.swift
//  learnSwift
//
//  Created by Fatmir Qel on 19.08.21.
//

import Foundation

func dig(_ num: Int) -> [Int]{
    var num_to_reverse: Int = num
    var my_array: [Int] = []

    
    repeat{
        
        my_array += [num_to_reverse % 10]
        num_to_reverse /= 10

    }while num_to_reverse > 0
    
    return my_array
}

