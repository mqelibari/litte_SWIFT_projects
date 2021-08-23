//
//  removeVowels.swift
//  learnSwift
//
//

func disemvowel(_ s: String) -> String {
    let vowels = ["a", "e", "i", "o", "u", "i", "A", "E", "I", "O", "U"]
    var string_witout_vowels = String()
    for c in s{
        if vowels.contains(String(c)){}
        else{string_witout_vowels += String(c)}
    }
    return string_witout_vowels
}
