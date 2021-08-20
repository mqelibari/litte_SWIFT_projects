//
//  diamondMaker.swift
//  learnSwift
//
//  Created by Fatmir Qel on 20.08.21.
//

func diamond(_ diamond_size: Int) -> String? {
    var middle: Int = 0
    if(diamond_size % 2) == 0 || diamond_size < 0{
        return nil
    }

    var myArr: [String] = []
    var stars = 0
    for _ in 0..<diamond_size{
        var ebene = ""
        middle = (diamond_size / 2 + 1)
        for _ in middle..<size-stars/2{
            ebene += " "
        }
        
        for _ in 0...stars{
            ebene += "*"
        }
        myArr.append(ebene)
        stars += 1
        
        
    }
    
    myArr += myArr.reversed()
    myArr.remove(at: diamond_size)
    var return_value: [String] = []

    for idx in 0..<myArr.count{
        if (idx % 2) == 0 || idx == 0{
            return_value += [myArr[idx]]
        }
    }
    return_value[diamond_size-1] += "\n"
    return return_value.joined(separator: "\n")
}

