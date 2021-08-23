//
//  squareInRectangle.swift
//  learnSwift
//
//

func sqInRect(_ lng: Int, _ wdth: Int) -> [Int]? {
    var length  = lng > wdth ? wdth: lng
    var width = lng < wdth ? wdth: lng
    if lng == wdth {return nil}
    var max_area = length * width
    if length == 0 || width == 0{return [0]}
    var sqaure: [Int] = []
    
    repeat{
        sqaure.append(length)
        max_area -= (length * length)
        width -= length
        let temp_width = width
        let temp_length = length
        width = length > width ? length : width
        length = temp_length < temp_width ? temp_length: temp_width
    }while max_area > 0
    return sqaure
}
