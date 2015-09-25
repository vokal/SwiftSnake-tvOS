//
//  Snake.swift
//  SwiftSnake
//
//  Created by Ellen Shapiro (Vokal) on 9/24/15.
//  Copyright © 2015 Vokal. All rights reserved.
//

import Foundation
import SpriteKit

class Snake: SKNode {
    
    enum TurnDirection {
        case Left,
        Right,
        Up,
        Down
    }

    let head = SnakeHeadNode()
    var bodyPartCount = 3 //Start with this many body parts.
    
    //MARK:- User navigation of the snake
    
    func turn(direction: TurnDirection) {
        switch direction {
        case .Left:
            print("TURN LEFT")
        case .Right:
            print("TURN RIGHT")
        case .Up:
            print("TURN UP")
        case .Down:
            print("TURN DOWN FOR WHAT?!")
        }
    }
    
    //MARK:- Food Consumption
    
    func eatFood() {
        //Add a body part to the end of the snake. 
        ++self.bodyPartCount
    }
}