//
//  main.swift
//  ChooseYourOwnAdventure
//
//  Created by Tennant Shaw on 4/19/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import Foundation

let hasNonWhitespaceCharacters: (String) -> Bool = { input in
    
    let whitespaceCharacters = CharacterSet.whitespacesAndNewlines
    
    let filtered = input.unicodeScalars.filter { char in
        whitespaceCharacters.contains(char) == false
    }
    
    return filtered.isEmpty == false
}

print("Welcome to Yesterday's tomorrow!")
let givenName = getStringFromUser(prompt: "What is your name? Oh, you don't remember? Well, why don't you make one up?!",
                                  failureMessage: "Please enter your awesome made-up name.",
                                  predicate: hasNonWhitespaceCharacters)

print("Hmmm. I see. \(givenName) isn't exactly what I expected. Oh well, to late now.")
print("\n")
scene1()
