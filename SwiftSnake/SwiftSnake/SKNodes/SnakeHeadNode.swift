//
//  SnakeHead.swift
//  SwiftSnake
//
//  Created by Ellen Shapiro (Vokal) on 9/24/15.
//  Copyright © 2015 Vokal. All rights reserved.
//

import Foundation
import SpriteKit

enum SnakeHeadDirection: String {
    case Up = "SnakeHeadUp",
    Down = "SnakeHeadDown",
    Right = "SnakeHeadRight",
    Left = "SnakeHeadLeft"
}

class SnakeHeadNode: SKSpriteNode {
    
    //MARK:- Factory
    
    static func withDirection(direction: SnakeHeadDirection) -> SnakeHeadNode {
        let node = SnakeHeadNode(imageNamed: direction.rawValue)
        node.name = NodeName.SnakeHead.rawValue
        node.physicsBody?.categoryBitMask = NodeBitmask.snakeHead
        return node        
    }

}
