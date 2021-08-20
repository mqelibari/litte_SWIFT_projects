//
//  doubleDigitsAndConcatenate.swift
//  learnSwift
//
//  Created by Fatmir Qel on 19.08.21.
//

import Foundation
import Darwin

func squareDigits(_ value: Int) -> Int{
    var my_array: [Int] = []
    var num = value
    var end_result: Int = 0
    repeat{
        my_array += [num % 10]
        num /= 10
    }while num > 0

    my_array.reverse()
    
    for (idx, element) in my_array.enumerated(){
        my_array[idx] = element * element
    }
    print(my_array)
    var potenz = 0
    var temp = 0
    var first = true
    for element in my_array{
        var db = element
        repeat{
            temp = db % 10
            db /= 10
            if !first{
                end_result += (temp * (Int(pow(Double(10), Double(potenz)))))}
            else{
                end_result += temp
                first = false
            }
            potenz += 1
        }while db > 0
    }

    return end_result
}
