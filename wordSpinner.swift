//
//  wordSpinner.swift
//  learnSwift
//
//  Created by Fatmir Qel on 20.08.21.
//


func spinWords(in sentence: String) -> String {
    var my_Array: [String] = []
    my_Array = sentence.components(separatedBy: " ")
    for (idx, word) in my_Array.enumerated(){
        if word.count < 5{
            continue
        }else{
            my_Array[idx] = String(my_Array[idx].reversed())
        }
    }
    return my_Array.joined(separator: " ")
}
