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
    private let columns = 16 * 2
    private let rows = 9 * 2
    
    let backingStore: GridStorage<PieceToDisplay>
    
    //MARK: - Init
    
    override init() {
        self.backingStore = GridStorage(columns: columns, rows: rows)
        super.init()
        self.name = NodeName.Background.rawValue
    }
    
    required init?(coder aDecoder: NSCoder) {
        assertionFailure("Don't use a coder, use init!")
        
        /*
            I would return nil here, but the compiler whines when I do:
            "All stored properties of a class instance must be initialized
            before returning nil from an initializer" - Wait, what? OK, 
            fine, be that way. I'll just return the damned object then.
        */
        self.backingStore = GridStorage(columns: columns, rows: rows)
        super.init(coder: aDecoder)
    }
    
    //MARK: - Setup
    
    func setupGrid(gridSize: CGSize) {
        let xWidth = gridSize.width / CGFloat(columns)
        let yHeight = gridSize.height / CGFloat(rows)
        let nodeSize = CGSize(width: xWidth, height: yHeight)
        
        for column in 0..<columns {
            let xOrigin = xWidth * CGFloat(column) + xWidth / 2
            for row in 0..<rows {
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
