//
//  Side.swift
//  Pete Zaboi
//
//  Created by Joshua Grant on 12/24/19.
//  Copyright © 2019 Joshua Grant. All rights reserved.
//

import Foundation

enum Side: String, CaseIterable {
    case chickenSalad = "cs"
    case hotWings = "hw"
    case cheesePudding = "cp"
    case guacCake = "gc"
    case twinkies = "t"
    case fleshsicle = "f"
    case chocolateDippedCroutons = "cdc"
    case cola = "c"
    case jujujuice = "jjj"
    case plainBoringWater = "pbw"
    case superDrink = "sd"
    case steroids = "s"
    case pickels = "p"
    case ketchup = "k"
    case humanFrenchFries = "h"
    
    var sideInputText: String { return "[\(rawValue)] \(self)"}
    
    static func gather() -> [Side] {
        for side in Side.allCases {
            print(side.sideInputText)
        }
        
        var sides: [Side] = []
        var more: Bool = true
        
        while more {
            guard let input = readLine()?.lowercased() else { continue }
            
            if input == "" {
                more = false
                break
            }
            
            guard let newSide = Side(rawValue: input) else { continue }
            sides.append(newSide)
            print("Would you like to add more sides? [y/n]")
            if !Game.getChoice() {
                more = false
            }
        }
        
        return sides
    }
    
    static func sortSides(_ sides: [Side]) -> [Side] {
        return sides.sorted { (first, second) -> Bool in
            first.rawValue > second.rawValue
        }
    }
}
