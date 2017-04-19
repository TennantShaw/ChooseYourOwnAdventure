//
//  Monster.swift
//  ChooseYourOwnAdventure
//
//  Created by Tennant Shaw on 4/19/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import Foundation

class Monster : CustomStringConvertible {
    let monsterType: String
    let monsterRegion: String
    var fullName: String {
        return "The \(monsterType) of \(monsterRegion)"
    }
    
    init(monsterType: String, monsterRegion: String) {
        self.monsterType = monsterType
        self.monsterRegion = monsterRegion
    }
    
    var description: String {
        return fullName
    }
}


class MonsterClass : Monster {
    let fearPower: Int
    let darkPower: Int
    
    init(fearPower: Int, darkPower: Int) {
        self.fearPower = fearPower
        self.darkPower = darkPower
        
        super .init(monsterType: "Werewolf", monsterRegion: "London")
    }
}
