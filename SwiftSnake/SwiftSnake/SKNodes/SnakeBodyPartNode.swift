//
//  SnakeBodyPartNode.swift
//  SwiftSnake
//
//  Created by Ellen Shapiro (Vokal) on 9/24/15.
//  Copyright © 2015 Vokal. All rights reserved.
//

import Foundation
import SpriteKit

enum SnakeBodyPart: String {
    case Horizontal = "SnakeBodyHorizontal",
    Vertical = "SnakeBodyVertical",
    LeftUpBend,
    LeftDownBend,
    RightUpBend,
    RightDownBend
}

class SnakeBodyPartNode: SKSpriteNode {
    
    var bodyPart: SnakeBodyPart?

    //MARK:- Factory
    
    static func withPart(bodyPart: SnakeBodyPart) -> SnakeBodyPartNode {
        let node = SnakeBodyPartNode(imageNamed: bodyPart.rawValue)
        node.name = NodeName.SnakeBody.rawValue
        node.bodyPart = bodyPart
        node.physicsBody?.categoryBitMask = NodeBitmask.SnakeBody.rawValue

        return node;
    }
}
