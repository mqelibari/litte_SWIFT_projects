//
//  numReverser.swift
//  learnSwift
//
//  Created by Fatmir Qel on 19.08.21.
//

import Foundation

func dig(_ num: Int) -> [Int]{
    var new_num: Int = num
    var my_array: [Int] = []

    
    repeat{
        
        my_array += [new_num % 10]
        new_num /= 10

    }while new_num > 0
    
    return my_array
}

