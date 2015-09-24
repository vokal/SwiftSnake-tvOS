//
//  SnakeHead.swift
//  SwiftSnake
//
//  Created by Ellen Shapiro (Vokal) on 9/24/15.
//  Copyright © 2015 Vokal. All rights reserved.
//

import Foundation
import SpriteKit

class SnakeHeadNode: SKNode {
    
    //MARK:- Initialization
    
    override init() {
        super.init()
        self.name = NodeName.SnakeHead.rawValue
        self.physicsBody?.categoryBitMask = NodeBitmask.snakeHead
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}
