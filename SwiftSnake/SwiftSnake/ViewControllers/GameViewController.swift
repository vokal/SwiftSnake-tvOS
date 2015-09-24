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

    //TODO: Figure out how the hell this actually works and replace this sample code with real code.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let skView = self.view as? SKView else {
            assertionFailure("DERP")
            return;
        }
        
        print("FRAME: \(skView.frame)")
        
        // create a new scene
        let scene = SnakeGameScene.makeSceneOfSize(skView.frame.size)
        skView.presentScene(scene)
        
        // add a tap gesture recognizer
        let tapGesture = UITapGestureRecognizer(target: self, action: "handleTap:")
        var gestureRecognizers = [UIGestureRecognizer]()
        gestureRecognizers.append(tapGesture)
        if let existingGestureRecognizers = skView.gestureRecognizers {
            gestureRecognizers.appendContentsOf(existingGestureRecognizers)
        }
        skView.gestureRecognizers = gestureRecognizers
    }
    
    func handleTap(gestureRecognizer: UIGestureRecognizer) {
        
        guard let skView = self.view as? SKView else {
            return;
        }
        
        // check what nodes are tapped
        let tapLocation = gestureRecognizer.locationInView(skView)
        print("Tapped \(tapLocation)")
    }
}
