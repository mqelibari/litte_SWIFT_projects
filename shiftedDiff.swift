//
//  shiftedDiff.swift
//  learnSwift
//
//  Created by Fatmir Qel on 24.08.21.
//

func shiftedDiff(_ s1: String, _ s2: String) -> Int? {
    var shifftings = 0
    if(are_characters_the_same(s1, s2)){
        if(!calculate_shifftings(s1, s2, &shifftings)){return nil}
        return shifftings
    }
    return nil
}

func calculate_shifftings(_ s1: String, _ s2: String, _ shifftings: inout Int)-> Bool{
    var s1_as_array = Array(s1)
    let s2_as_array = Array(s2)
    if (s1_as_array == s2_as_array){return true}
    while s1_as_array != s2_as_array {
        let end_char = s1_as_array.remove(at: s1_as_array.count - 1)
        s1_as_array.insert(end_char, at: 0)
        shifftings += 1
        if shifftings > s1_as_array.count * 2{
            return false
        }
    }
    return true
}



func are_characters_the_same(_ s1: String, _ s2: String) -> Bool{
    for i in s1{
        if !s2.contains(i){
            return false
        }
    }
    for j in s2{
        if !s1.contains(j){
            return false
        }
    }
    if s1.count == s2.count{
        return true
    }
    return false
}
