//
//  NodeConstants.swift
//  SwiftSnake
//
//  Created by Ellen Shapiro (Vokal) on 9/24/15.
//  Copyright © 2015 Vokal. All rights reserved.
//

import Foundation

enum NodeName: String {
    case
    Food,
    Background,
    Space,
    SnakeHead,
    SnakeBody
}

struct NodeBitmask: OptionSetType {
    let rawValue: UInt32
    static let SnakeHead = NodeBitmask(rawValue: 0x1 << 0)
    static let SnakeBody = NodeBitmask(rawValue: 0x1 << 1)
    static let Food = NodeBitmask(rawValue: 0x1 << 2)
}
