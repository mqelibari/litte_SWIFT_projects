//
//  doubleArrayValues.swift
//  learnSwift
//
//  Created by Fatmir Qel on 19.08.21.
//

import Foundation

func doubler(_ myArray: Array <Int>) -> Array <Int>{
    var new_array: [Int] = []
    for element in myArray{
        new_array.append(element * 2)
    }
    return new_array
}
