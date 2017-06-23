//
//  GameScene.swift
//  Ticktactoo
//
//  Created by Nida Zahid on 6/23/17.
//  Copyright © 2017 Nida Zahid. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        
        let grid = Grid(numberOfRows: 5, numberOfColumns: 5, boxWidth: 50, boxHeight: 50)
        grid.position = CGPoint(x: 0, y: 200)
        addChild(grid)
        
        
    }
}
