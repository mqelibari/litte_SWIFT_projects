//
//  findOutliner.swift
//  learnSwift
//
//

func findOutlier(_ array: [Int]) -> Int {
    if(more_odd_number(array)){
        for i in array{
            if i % 2 == 0{
                return i
            }
        }
    }else{
        for j in array{
            if j % 2 != 0{
                return j
            }
        }
    }
    return 0
}

func more_odd_number(_ IntArray: [Int]) -> Bool{
    var odd_counter = 0
    for i in IntArray{
        if i % 2 != 0{
            odd_counter += 1
        }
    }
    if odd_counter > IntArray.count/2{
        return true
    }
    return false
}
