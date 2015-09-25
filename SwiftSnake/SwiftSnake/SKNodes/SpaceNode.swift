//
//  SpaceNode.swift
//  SwiftSnake
//
//  Created by Ellen Shapiro (Vokal) on 9/24/15.
//  Copyright © 2015 Vokal. All rights reserved.
//

import Foundation
import SpriteKit

class SpaceNode: SKShapeNode {
    
    //MARK: - Factory
    
    static func emptyNodeOfSize(nodeSize: CGSize) -> SpaceNode {
        let node = SpaceNode(rectOfSize: nodeSize)
        node.fillColor = .blackColor()
        node.strokeColor = .whiteColor()
        node.lineWidth = 1
        node.name = NodeName.Space.rawValue
        return node;
    }
}