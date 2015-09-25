//
//  SnakeGameScene.swift
//  SwiftSnake
//
//  Created by Ellen Shapiro (Vokal) on 9/24/15.
//  Copyright © 2015 Vokal. All rights reserved.
//

import Foundation
import SpriteKit

class SnakeGameScene: SKScene {
    
    /**
     Factory method.
     
     - parameter sceneSize: The CGSize of the scene.
     
     - returns: The created scene. 
     */
    static func makeSceneOfSize(sceneSize: CGSize) -> SnakeGameScene {
        let scene = SnakeGameScene(size: sceneSize)
        scene.backgroundColor = .redColor()
        
        let backgroundNode = GridBackgroundNode()
        backgroundNode.setupGrid(sceneSize)
        scene.addChild(backgroundNode)
        
        scene.physicsWorld.contactDelegate = backgroundNode
        return scene
    }
}