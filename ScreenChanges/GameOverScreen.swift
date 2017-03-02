//
//  GameOverScreen.swift
//  ScreenChanges
//
//  Created by GrownYoda on 2/16/17.
//  Copyright © 2017 YuryG. All rights reserved.
//

import SpriteKit

class GameOverScreen: SKScene {
    
    var labelYourScore: SKLabelNode?
    
    
    override func didMove(to view: SKView) {
        
        labelYourScore = self.childNode(withName: "labelYourScore") as? SKLabelNode
        labelYourScore?.text = "Last Score: " + "\(lastScore)"
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        moveToSceneWith(sceneName: "Menu")
    }
    
    
    func moveToSceneWith(sceneName: String) {
        
        let scene = GameScene(fileNamed: sceneName)
        let skView = self.view as SKView?
        scene?.scaleMode = .aspectFill
        skView?.presentScene(scene)
    }
    
    
}
