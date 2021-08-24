//
//  encrypterASCII.swift
//  learnSwift
//
//

func encryptThis(text:String) -> String{
    let wordArray = text.split(separator: " ")
    var encoded: [String] = []
    for (idx, element) in wordArray.enumerated(){
        var one_word_array: [Character] = Array()
        for c in element{
            one_word_array.append(c)
        }
        if(element.count > 1){
            swap_chars(word: &one_word_array)
            change_first_character_to_ascii(word: &one_word_array)
            insert_to_new_array(word: one_word_array, array_to_insert: &encoded)
        }
        if element.count == 1{
            var as_array: [Character] = Array(element)
            change_first_character_to_ascii(word: &as_array)
            insert_to_new_array(word: as_array, array_to_insert: &encoded)
        }
    
        
    }
    return encoded.joined(separator: " ")
}


func insert_to_new_array(word: [Character], array_to_insert: inout [String]){
    var word_as_string = ""
    for element in word{
        word_as_string += String(element)
    }
    array_to_insert.append(word_as_string)
}

func change_first_character_to_ascii(word: inout [Character]){
    let asci_val = word[0].asciiValue
    let int_val = Int(0) + Int(asci_val!)
    let int_as_string = String(int_val)
    let split_to_charates = Array(int_as_string)
    word.remove(at: 0)
    word.insert(contentsOf: split_to_charates, at: 0)
    
}


func swap_chars(word: inout [Character]){
    let last_char = word[word.count-1]
    let second_char = word[1]
    word[1] = last_char
    word[word.count-1] = second_char
}

