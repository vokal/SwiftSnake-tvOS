//
//  Food.swift
//  SwiftSnake
//
//  Created by Ellen Shapiro (Vokal) on 9/24/15.
//  Copyright © 2015 Vokal. All rights reserved.
//

import Foundation
import SpriteKit

class FoodNode: SKLabelNode {
    
    /**
     Factory method
     
     - returns: A new food node with a random food emoji. 
     */
    static func makeFood() -> FoodNode {
        let food = FoodNode.randomFood()
        let node = FoodNode(text: food)
        node.name = NodeType.Food.rawValue
        return node
    }
    
    /**
     - returns: A random food emoji string.
     */
    private static func randomFood() -> String {
        let foods = [
            "🍔",
            "🍆",
            "🍕",
            "🍖",
            "🍅",
        ]

        let randomIndex = Int(arc4random_uniform(UInt32(foods.count)))
        return foods[randomIndex]
    }
}