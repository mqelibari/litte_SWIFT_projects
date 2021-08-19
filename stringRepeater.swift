//
//  stringRepeater.swift
//  learnSwift
//
//  Created by Fatmir Qel on 19.08.21.
//

import Foundation

func reapeatString(_ n: Int, _ string: String) -> String{
    var my_string = string
    for _ in 0..<n {
        my_string += string
    }
    return my_string
}
