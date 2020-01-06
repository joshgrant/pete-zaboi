//
//  Pizza.swift
//  Pete Zaboi
//
//  Created by Joshua Grant on 12/24/19.
//  Copyright © 2019 Joshua Grant. All rights reserved.
//

import Foundation

struct Pizza {
    
    enum Size: String {
        case small = "s"
        case medium = "m"
        case large = "l"
        case extraLarge = "el"
        case extraExtraLarge = "eel"
        case extraExtraExtraLarge = "eeel"
    }
    
    
    let size: Size
    let ingredients: [Ingredient]
    
    static func makeAPizza() -> Pizza {
        print("Time to get the ingredients. Enter one at a time:")
        let ingredients = Ingredient.gather()
        
        print("You gathered these ingredients:")
        for ingredient in ingredients {
            print(ingredient)
        }
        
        print("Which size?")
        print("[s] = small")
        print("[m] = medium")
        print("[l] = large")
        print("[el] = extra large")
        print("[eel] = extra extra large")
        print("[eeel] = extra extra extra large")
        guard let input = readLine() else { fatalError() }
        guard let size = Size(rawValue: input) else { fatalError() }
        
        let pizza = Pizza(size: size, ingredients: ingredients)
        return pizza
    }
}
