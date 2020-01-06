//
//  main.swift
//  Pete Zaboi
//
//  Created by Joshua Grant on 12/24/19.
//  Copyright © 2019 Joshua Grant. All rights reserved.
//

import Foundation

class Game {
    
    static var money: Int = 0
    static var maxAgeBeforeDeath: Int = Int.random(in: 7...9)
    static var age: Int = 0
    
    static func getChoice() -> Bool {
        let input = readLine()
        if input?.lowercased() == "n" {
            return false
        } else {
            return true
        }
    }
    
    static func start() {
        print("Hello Pete Zaboi, today you start your indentured servitude! You are running a pizza shop. Your task, which you must accept by order of the Eye, is to deliver pizzas. You must pay the Eye 1000 credits every month.")
        print("Accept [Y], Decline [N]")
        guard let choice = readLine() else { fatalError("NMM") }
        print("You chose \(choice)")
        print("You've accepted the position. Congratulations!")
        liveLife()
    }
    
    static func liveLife() {
        while age < maxAgeBeforeDeath {
            startDay()
        }
        
        print("You die! You are \(age) years old and have \(money) credits.")
    }
    
    static func startDay() {
        for i in 0 ... Int.random(in: 4...5) {
            print("Order number: \(i)")
            orderPlaced()
        }
        endOfDay()
    }
    
    static func orderPlaced() {
        print("Ring a ding a dingy.")
        print("Pick up the thingy (phone) [y/n]?")
        if getChoice() {
            // Somebody places an order
            let order = Order.makeRandomOrder()
            print(order.request)
            
            var ingredientsMatch: Bool = true
            
            for pizza in order.pizzas {
                let thePizzaWeMade = Pizza.makeAPizza()
                let ourSortedIngredients = Ingredient.sortIngredients(thePizzaWeMade.ingredients)
                let orderSortedIngredients = Ingredient.sortIngredients(pizza.ingredients)
                if !ourSortedIngredients.elementsEqual(orderSortedIngredients) {
                    ingredientsMatch = false
                }
            }
            
            print("Time to add the sides. Enter one at a time:")
            let sides = Side.gather()
            
            var sidesMatch: Bool = true
            
            let ourSortedSides = Side.sortSides(sides)
            let orderSortedSides = Side.sortSides(order.sides)
            
            if !ourSortedSides.elementsEqual(orderSortedSides) {
                sidesMatch = false
            }
            
            if ingredientsMatch && sidesMatch {
                print("Thanks for making the pizza! Here's your money: \(order.price)")
                let tip = Int.random(in: 5...10)
                print("And here's a tip: \(tip)")
                money += order.price
                money += tip
            } else {
                print("Hey! This isn't what I ordered. I'm not paying you, jerk!!!")
            }
        } else {
            print("You ignore the phone.")
        }
    }
    
    static func endOfDay() {
        print("End of day! You have \(money) credits.")
        age += 1
    }
}

Game.start()
RunLoop.main.run()
