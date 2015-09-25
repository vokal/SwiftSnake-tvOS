//
//  SwiftSnakeTests.swift
//  SwiftSnakeTests
//
//  Created by Ellen Shapiro (Vokal) on 9/24/15.
//  Copyright © 2015 Vokal. All rights reserved.
//

import XCTest
import SpriteKit

@testable import SwiftSnake

class SwiftSnakeTests: XCTestCase {
    
    func testCollisionDetection() {    
        let snakeHead = SKPhysicsBody()
        snakeHead.categoryBitMask = NodeBitmask.SnakeHead.rawValue
        let snakeBody = SKPhysicsBody()
        snakeBody.categoryBitMask = NodeBitmask.SnakeBody.rawValue
        let food = SKPhysicsBody()
        food.categoryBitMask = NodeBitmask.Food.rawValue
        
        //Ouroboros case
        XCTAssertTrue(CollisionHandler.isOuroboros(snakeHead, snakeBody))
        XCTAssertTrue(CollisionHandler.isOuroboros(snakeBody, snakeHead))
        XCTAssertFalse(CollisionHandler.isOuroboros(snakeBody, food))
        XCTAssertFalse(CollisionHandler.isOuroboros(food, snakeBody))
        XCTAssertFalse(CollisionHandler.isOuroboros(food, snakeHead))
        XCTAssertFalse(CollisionHandler.isOuroboros(snakeHead, food))
    
        //Eatin' case
        XCTAssertTrue(CollisionHandler.isEating(snakeHead, food))
        XCTAssertTrue(CollisionHandler.isEating(food, snakeHead))
        XCTAssertFalse(CollisionHandler.isEating(snakeHead, snakeBody))
        XCTAssertFalse(CollisionHandler.isEating(snakeBody, snakeHead))
        XCTAssertFalse(CollisionHandler.isEating(snakeBody, food))
        XCTAssertFalse(CollisionHandler.isEating(food, snakeBody))
    }
}
