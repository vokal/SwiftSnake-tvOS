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
    var bodyParts = [SnakeBodyPartNode]()
    
    //MARK:- User navigation of the snake
    
    func turn(direction: TurnDirection) {
    
    }
    
    //MARK:- Food Consumption
    
    func eatFood() {
        //Add a body part to the end of the snake. 
        let bodyPart = SnakeBodyPartNode()
        
        //Add to end of snake
        
        //Add to array
        bodyParts.append(bodyPart)
    }
}