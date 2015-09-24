//
//  SpaceNode.swift
//  SwiftSnake
//
//  Created by Ellen Shapiro (Vokal) on 9/24/15.
//  Copyright © 2015 Vokal. All rights reserved.
//

import Foundation
import SpriteKit

class SpaceNode: SKSpriteNode {
    
    static func emptyNode() -> SpaceNode {
        let node = SpaceNode(imageNamed: "cupcake")
        node.name = NodeType.Space.rawValue
        return node;
    }
    
    
    func addFood(food: FoodNode) {
        food.position = CGPointMake(0, 0)
        self.addChild(food)
    }
}