//
//  CollisionHandler.swift
//  SwiftSnake
//
//  Created by Ellen Shapiro (Vokal) on 9/24/15.
//  Copyright © 2015 Vokal. All rights reserved.
//

import Foundation
import SpriteKit

struct CollisionHandler {
    
    //MARK: - Major collision detectors
    
    /**
    - parameter firstBody: The first body to compare
    - parameter secondBody: The second body to compare the first body to
    - returns: true if the snake head has run into the snake tail. false if not.
    */
    static func isOuroboros(firstBody: SKPhysicsBody, _ secondBody: SKPhysicsBody) -> Bool {
        switch (firstBody.categoryBitMask, secondBody.categoryBitMask) {
        case (NodeBitmask.SnakeHead.rawValue, NodeBitmask.SnakeBody.rawValue):
            fallthrough
        case (NodeBitmask.SnakeBody.rawValue, NodeBitmask.SnakeHead.rawValue):
            return true
        default:
            return false
            
        }
    }
    
    /**
     - parameter firstBody: The first body to compare
     - parameter secondBody: The second body to compare the first body to
     - returns: true if the snake head has run into a piece of food. false if not.
     */
    static func isEating(firstBody: SKPhysicsBody, _ secondBody: SKPhysicsBody) -> Bool {
        switch (firstBody.categoryBitMask, secondBody.categoryBitMask) {
        case (NodeBitmask.SnakeHead.rawValue, NodeBitmask.Food.rawValue):
            fallthrough
        case (NodeBitmask.Food.rawValue, NodeBitmask.SnakeHead.rawValue):
            return true
        default:
            return false
        }
    }
}
