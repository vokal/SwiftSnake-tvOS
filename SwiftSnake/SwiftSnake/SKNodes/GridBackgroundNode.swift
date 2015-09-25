//
//  GridBackgroundNode.swift
//  SwiftSnake
//
//  Created by Ellen Shapiro (Vokal) on 9/24/15.
//  Copyright © 2015 Vokal. All rights reserved.
//

import Foundation
import SpriteKit

class GridBackgroundNode: SKNode {
    
    //Since TVs are 16x9...
    private static let multiplier = 2
    private static let columns = 16 * multiplier
    private static let rows = 9 * multiplier
    
    let backingStore: GridStorage<PieceToDisplay> = GridStorage(columns: GridBackgroundNode.columns,
        rows: GridBackgroundNode.rows)
    
    //MARK: - Init
    
    private func commonPostInit() {
        self.name = NodeName.Background.rawValue
    }
    
    override init() {
        super.init()
        commonPostInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        assertionFailure("Don't use a coder, use init!")
        
        /*
            I would return nil here, but the compiler whines when I do:
            "All stored properties of a class instance must be initialized
            before returning nil from an initializer" - Wait, what? OK, 
            fine, be that way. I'll just return the damned object then.
        */
        super.init(coder: aDecoder)
        commonPostInit()
    }
    
    //MARK: - Setup
    
    func setupGrid(gridSize: CGSize) {
        let xWidth = gridSize.width / CGFloat(GridBackgroundNode.columns)
        let yHeight = gridSize.height / CGFloat(GridBackgroundNode.rows)
        let nodeSize = CGSize(width: xWidth, height: yHeight)
        
        for column in 0..<GridBackgroundNode.columns {
            let xOrigin = xWidth * CGFloat(column) + xWidth / 2
            for row in 0..<GridBackgroundNode.rows {
                let yOrigin = yHeight * CGFloat(row) + yHeight / 2
                let space = SpaceNode.emptyNodeOfSize(nodeSize)
                space.position = CGPointMake(xOrigin, yOrigin)
                self.addChild(space)
            }
        }
    }
}

//MARK: - SKPhysicsContactDelegate

extension GridBackgroundNode: SKPhysicsContactDelegate {
    func didBeginContact(contact: SKPhysicsContact) {
//        guard let firstNode = contact.bodyA.node as? SKSpriteNode,
//        let secondNode = contact.bodyB.node as? SKSpriteNode else {
//            assertionFailure("THESE AIN'T NO NODES");
//            return
//        }
        
        if CollisionHandler.isOuroboros(contact.bodyA, contact.bodyB) {
            //TODO: Show game over scene
            print("GAME OVER")
        } else if CollisionHandler.isEating(contact.bodyA, contact.bodyB) {
            //TODO: Make snake longer
            print("OM NOM NOM");
        }
    }
}
