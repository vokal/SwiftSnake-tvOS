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
    
    static func makeSceneOfSize(sceneSize: CGSize) -> SnakeGameScene {
        let scene = SnakeGameScene(size: sceneSize)
        scene.backgroundColor = .redColor()
        
        let backgroundNode = GridBackgroundNode.backgroundNode()
        backgroundNode.setupGrid()
        scene.addChild(backgroundNode)
        return scene
    }
}