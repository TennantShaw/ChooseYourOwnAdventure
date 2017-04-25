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

let scene1 = getChoiceFromUser(prompt: "It is pretty early in the day so why don't we take a tour of the house you will be staying at? Or if you'd rather, we can go slay monsters in the forest or play stones at my place. What do you say?",
                               choices: [
                                "A tour of the house.",
                                "Slay some beasties.",
                                "Play Stones."
    ])

let scene2 = getChoiceFromUser(prompt: "A tour of your place it shall be..... This is your place, *pulls you inside as he gestures towards and empty room with a single chamber pot in the corner*. Now how about slaying them beasties?",
                               choices: [
                                "A tour of your place it shall be.",
                                "About damn time we did some slaying.",
                                "I'd rather go face monsters without my mace, but as you wish."
    ])

let scene3 = getChoiceFromUser(prompt: "About damn time we did some slaying....*at the edge of the woods* I just heard a scream back towards town. Should we check it out?",
                               choices: [
                                "A tour of your place it shall be.",
                                "About damn time we did some slaying.",
                                "I'd rather go face monsters without my mace, but as you wish."
    ])

let scene4 = getChoiceFromUser(prompt: "It is pretty early in the day so why don't we take a tour of the house you will be staying at? Or if you'd rather, we can go slay monsters in the forest or play stones at my place. What do you say?",
                               choices: [
                                "A tour of your place it shall be.",
                                "About damn time we did some slaying.",
                                "I'd rather go face monsters without my mace, but as you wish."
    ])

let scene5 = getChoiceFromUser(prompt: "It is pretty early in the day so why don't we take a tour of the house you will be staying at? Or if you'd rather, we can go slay monsters in the forest or play stones at my place. What do you say?",
                               choices: [
                                "A tour of your place it shall be.",
                                "About damn time we did some slaying.",
                                "I'd rather go face monsters without my mace, but as you wish."
    ])

enum choices: String {
    case tourHouse
    case slayMonsters
    case playStones
    case sleep
}





