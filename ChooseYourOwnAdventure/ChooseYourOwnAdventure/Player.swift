//
//  Player.swift
//  ChooseYourOwnAdventure
//
//  Created by Tennant Shaw on 4/19/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import Foundation

class Person : CustomStringConvertible {
    let familyName: String
    let givenName: String
    let charisma: Int
    var fullName: String {
        return "\(givenName) of \(familyName)"
    }
    
    init(givenName: String, familyName: String, charisma: Int) {
        self.givenName = givenName
        self.familyName = familyName
        self.charisma = charisma
    }
    
    var description: String {
        return fullName
    }
}
