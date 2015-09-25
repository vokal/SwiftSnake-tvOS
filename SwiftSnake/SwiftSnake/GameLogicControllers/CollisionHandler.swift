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
    
    //MARK: - Convenience wrappers around category bitmask comparison
    
    private static func isFood(body: SKPhysicsBody) -> Bool {
        return body.categoryBitMask == NodeBitmask.Food.rawValue
    }
    
    private static func isSnakeHead(body: SKPhysicsBody) -> Bool {
        return body.categoryBitMask == NodeBitmask.SnakeHead.rawValue
    }
    
    private static func isSnakeBody(body: SKPhysicsBody) -> Bool {
        return body.categoryBitMask == NodeBitmask.SnakeBody.rawValue
    }
    
    //MARK: - Major collision detectors
    
    /**
    - parameter firstBody: The first body to compare
    - parameter secondBody: The second body to compare the first body to
    - returns: true if the snake head has run into the snake tail. false if not.
    */
    static func isOuroboros(firstBody: SKPhysicsBody, _ secondBody: SKPhysicsBody) -> Bool {
        if isSnakeHead(firstBody) {
            return isSnakeBody(secondBody)
        } else if isSnakeBody(firstBody) {
            return isSnakeHead(secondBody)
        }
        
        //Default case
        return false
    }
    
    /**
     - parameter firstBody: The first body to compare
     - parameter secondBody: The second body to compare the first body to
     - returns: true if the snake head has run into a piece of food. false if not.
     */
    static func isEating(firstBody: SKPhysicsBody, _ secondBody: SKPhysicsBody) -> Bool {
        if isFood(firstBody) {
            return isSnakeHead(secondBody)
        } else if isSnakeHead(firstBody) {
            return isFood(secondBody)
        }
        
        //Default case.
        return false
    }
}
