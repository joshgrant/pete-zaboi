//
//  Order.swift
//  Pete Zaboi
//
//  Created by Joshua Grant on 12/24/19.
//  Copyright © 2019 Joshua Grant. All rights reserved.
//

import Foundation

struct Order {
    let pizzas: [Pizza]
    let sides: [Side]
    let request: String
    let price: Int
    
    static func makeRandomOrder() -> Order {
        return allOrders[Int.random(in: 0..<allOrders.count)]
    }
    
    static var allOrders: [Order] = [
        Order.order1,
        Order.order2,
        Order.order3,
        Order.order4,
        Order.order5,
        Order.order6,
        Order.order7,
        Order.order8,
    ]
    
    static var order1: Order = {
        let ingredients = [Ingredient.psychMushroom, Ingredient.turkey, Ingredient.anchovy]
        let sides = [Side.pickels, Side.ketchup]
        let pizza = Pizza(size: .extraLarge, ingredients: ingredients)
        let order = Order(pizzas: [pizza],
                          sides: sides,
                          request: "Hi, I'd like a mushroom and turkey and anchovy pizza please. And can it be extra large, with a side of ketchup and pickles?",
                          price: 42)
        return order
    }()
    
    static var order2: Order = {
        let ingredients = [Ingredient.pepperoni]
        let sides = [Side.plainBoringWater]
        let pizza = Pizza(size: .large, ingredients: ingredients)
        let order = Order(pizzas: [pizza],
                          sides: sides,
                          request: "Hi can I have a large pepperoni pizza and a diet soda?",
                          price: 24)
        return order
    }()
    
    static var order3: Order = {
        let ingredients = [Ingredient.mayo, Ingredient.gravel]
        let sides = [Side.humanFrenchFries]
        let pizza = Pizza(size: .extraExtraExtraLarge, ingredients: ingredients)
        let order = Order(pizzas: [pizza],
                          sides: sides,
                          request:  "Hi can I please have a extra extra extra large mayo and gravel pizza with a side of human french fries.",
                          price: 36)
        return order
    }()
    
    
    static var order4: Order = {
        let ingredients = [Ingredient.ham, Ingredient.pinapple]
        let sides = [Side.cola]
        let pizza = Pizza(size: .large, ingredients: ingredients)
        let order = Order(pizzas: [pizza],
                          sides: sides,
                          request:    "Oh hi, my name is Samantha, can I please get a 2 liter bottle of diet coke and a hawaiian pizza.",
                          price: 26)
        return order
    }()
    
    
    static var order5: Order = {
        let ingredients = [Ingredient.arf, Ingredient.arf]
        let sides: [Side] = []
        let pizza = Pizza(size: .large, ingredients: ingredients)
        let order = Order(pizzas: [pizza],
                          sides: sides,
                          request:  "Ey yo I wanna pizza, now bitch.",
                          price: 10)
        return order
    }()
    
    
    static var order6: Order = {
        let ingredients = [Ingredient.pepperoni]
        let sides: [Side] = []
        let pizza = Pizza(size: .large, ingredients: ingredients)
        let order = Order(pizzas: [pizza],
                          sides: sides,
                          request:  "Herro, mucho pizza for me prease.",
                          price: 10)
        return order
    }()
    
    
    static var order7: Order = {
        let ingredients = [Ingredient.pepperoni]
        let sides: [Side] = []
        let pizza = Pizza(size: .medium, ingredients: ingredients)
        let order = Order(pizzas: [pizza],
                          sides: sides,
                          request:"I like them pies you guys supply. Provide me a wide slize if you plize, that would be nize.",
                          price: 10)
        return order
    }()
    
    
    static var order8: Order = {
        let ingredients = [Ingredient.pepperoni]
        let sides: [Side] = []
        let pizza = Pizza(size: .medium, ingredients: ingredients)
        let order = Order(pizzas: [pizza],
                          sides: sides,
                          request:"Arf arf woof, arf woof woof. Click. Can somebody get the dog off the *in phone!",
                          price: 10)
        return order
    }()
}
