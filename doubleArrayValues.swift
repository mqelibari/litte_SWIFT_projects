//
//  doubleArrayValues.swift
//  learnSwift
//
//  Created by Fatmir Qel on 19.08.21.
//

func doubler(_ one_Array: Array <Int>) -> Array <Int>{
    var array_with_doubled_values: [Int] = []
    for element in one_Array{
        array_with_doubled_values.append(element * 2)
    }
    return array_with_doubled_values
}
