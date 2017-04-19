//
//  main.swift
//  ChooseYourOwnAdventure
//
//  Created by Tennant Shaw on 4/19/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import Foundation

import Foundation


print("Hello stranger!")
let hasNonWhitespaceCharacters: (String) -> Bool = { input in
    
    let whitespaceCharacters = CharacterSet.whitespacesAndNewlines
    
    let filtered = input.unicodeScalars.filter { char in
        whitespaceCharacters.contains(char) == false
    }
    
    return filtered.isEmpty == false
}



let givenName = getStringFromUser(prompt: "What is your given name?",
                                  failureMessage: "Please enter your given name.",
                                  predicate: hasNonWhitespaceCharacters)

print("Oh! Hello \(givenName), it is a pleasure!")

let familyName = getStringFromUser(prompt: "What, perchance, is your family name?",
                                   failureMessage: "Please enter your family name.",
                                   predicate: hasNonWhitespaceCharacters)

let person = Person(givenName: givenName, familyName: familyName, charisma: 20)

print(person)
