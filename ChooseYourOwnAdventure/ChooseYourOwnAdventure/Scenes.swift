//
//  Scenes.swift
//  ChooseYourOwnAdventure
//
//  Created by Tennant Shaw on 5/1/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import Foundation

func scene1() {
    let choice = getChoiceFromUser(prompt: "It is pretty early in the day so why don't we take a tour of the house you will be staying at? Or if you'd rather, we can go slay monsters in the forest or play stones at my place. What do you say?\n",
                                   choices: [
                                    "A tour of the house.",
                                    "Slay some beasties.",
                                    "Play stones."
                                    
        ])
    
    switch choice {
    case "A tour of the house.":
        return scene2()
    case "Slay some beasties.":
        return scene3()
    case "Play stones.":
        return scene4()
    default:
        print("Shouldn't reach this point.")
    }
}


func scene2() {
    let choice = getChoiceFromUser(prompt: "A tour of your place it shall be..... This is your place, *pulls you inside as he gestures towards an empty room with a single chamber pot in the corner*. Now how about slaying them beasties?\n",
                                   choices: [
                                    "Slay some beasties.",
                                    "Play Stones.",
        ])
    
    switch choice {
    case "Slay some beasties.":
        return scene3()
    case "Play Stones.":
        return scene4()
    default:
        print("Shouldn't reach this point.")
    }
}


func scene3() {
    let choice = getChoiceFromUser(prompt: "About damn time we did some slaying....*at the edge of the woods* I just heard a scream back towards my place. Should we check it out?\n",
                                   choices: [
                                    "Lets stick to the slaying.",
                                    "Lets go check it out!",
        ])
    
    switch choice {
    case "Lets stick to the slaying.":
        return scene5()
    case "Lets go check it out!":
        return scene3()
    default:
        print("Shouldn't reach this point.")
    }
}

func scene4() {
    let choice = getChoiceFromUser(prompt: "As you approach the guide's home you see a Werewolf mauling an elderly lady. \"What do you want to do?\" He asks wild eyed.\n",
                                   choices: [
                                    "Take the furry mutt down!",
                                    "Run Away!"
        ])
    
    switch choice {
    case "Take the furry mutt down!":
        return scene5()
    case "Run Away!":
        return scene6()
    default:
        print("Shouldn't reach this point.")
    }
}

func scene5() {
    print("You try your best but the monsters devour you. THE END")
}

func scene6() {
    print("You ran. Ran hard. And were never seen or heard from again.")
}
