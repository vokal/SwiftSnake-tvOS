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
    let columns = 16
    let rows = 9
    
    static func backgroundNode() -> GridBackgroundNode {
        let node = GridBackgroundNode()
        print("Frame: \(node.frame)")
        node.name = NodeType.Background.rawValue
        return node
    }
    
    func setupGrid() {        
        let xWidth = 50.0 as CGFloat
        let yHeight = 50.0 as CGFloat
        
        for column in 0..<columns {
            let xOrigin = xWidth * CGFloat(column) * 2 + xWidth
            for row in 0..<rows {
                let yOrigin = yHeight * CGFloat(row) * 2 + yHeight
                let space = SpaceNode.emptyNode()
                space.position = CGPointMake(xOrigin, yOrigin)
                self.addChild(space)
            }
        }
    
    }
}