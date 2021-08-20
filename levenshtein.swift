//
//  main.swift
//  Learn Swift
//
//  Created by Fatmir Qel on 18.08.21.
//



func levenshtein(word_a: String, word_b:String) -> Int{
    
    
    if word_a.count == 0 || word_b.count == 0{
        return max(word_a.count, word_b.count)
    }
    
    var distance = 0
    
    if word_a[word_a.index(before: word_a.endIndex)] != word_b[word_b.index(before: word_b.endIndex)]{
        distance = 1
    }else{
        distance = 0
    }
    
    var sliced_a = word_a
    var sliced_b = word_b
    
    sliced_a.remove(at: sliced_a.index(before: sliced_a.endIndex))
    sliced_b.remove(at: sliced_b.index(before: sliced_b.endIndex))
    
    
    let delete = levenshtein(word_a: sliced_a, word_b: word_b) + 1
    let insert = levenshtein(word_a: word_a, word_b: sliced_b) + 1
    let same = levenshtein(word_a: sliced_a, word_b: sliced_b) + distance
    
    return min(delete, insert, same)
    
}



