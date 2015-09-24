//
//  GameViewController.swift
//  SwiftSnake
//
//  Created by Ellen Shapiro (Vokal) on 9/24/15.
//  Copyright (c) 2015 Vokal. All rights reserved.
//

import UIKit
import QuartzCore
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let skView = self.view as? SKView else {
            assertionFailure("DERP")
            return;
        }
        
        // create the Snake game scene
        let scene = SnakeGameScene.makeSceneOfSize(skView.frame.size)
        skView.presentScene(scene)
    }
}
