//
//  Ingredient.swift
//  Pete Zaboi
//
//  Created by Joshua Grant on 12/24/19.
//  Copyright © 2019 Joshua Grant. All rights reserved.
//

import Foundation

enum Ingredient: String, CaseIterable {
    case sauce = "s"
    case pepperoni = "p"
    case gravel = "g"
    case mayo = "m"
    case pinapple = "pp"
    case turkey = "t"
    case anchovy = "a"
    case psychMushroom = "pm"
    case ham = "hm"
    case arf = "dog"
    case cheese = "ch"
    
    var ingredientInputText: String { return "[\(rawValue)] \(self)"}
    
    static func gather() -> [Ingredient] {
        for ingredient in Ingredient.allCases {
            print(ingredient.ingredientInputText)
        }
        
        var ingredients: [Ingredient] = []
        var more: Bool = true
        
        while more {
            guard let input = readLine()?.lowercased() else { continue }
            guard let newIngredient = Ingredient(rawValue: input) else { continue }
            ingredients.append(newIngredient)
            print("Would you like to add more ingredients? [y/n]")
            if !Game.getChoice() {
                more = false
            }
        }
        
        return ingredients
    }
    
    static func sortIngredients(_ ingredients: [Ingredient]) -> [Ingredient] {
        return ingredients.sorted { (first, second) -> Bool in
            first.rawValue > second.rawValue
        }
    }
}
