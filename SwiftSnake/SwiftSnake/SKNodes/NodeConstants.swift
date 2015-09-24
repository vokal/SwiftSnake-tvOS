//
//  NodeConstants.swift
//  SwiftSnake
//
//  Created by Ellen Shapiro (Vokal) on 9/24/15.
//  Copyright © 2015 Vokal. All rights reserved.
//

import Foundation

enum NodeName: String {
    case Food,
    Background,
    Space,
    SnakeHead,
    SnakeBody
}

struct NodeBitmask {
    static let snakeHead: UInt32 = 0x1 << 0
    static let snakeBody: UInt32 = 0x1 << 1
    static let food: UInt32 = 0x1 << 2
}
