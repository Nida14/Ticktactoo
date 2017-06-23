//
//  Grid.swift
//  Ticktactoo
//
//  Created by Nida Zahid on 6/23/17.
//  Copyright © 2017 Nida Zahid. All rights reserved.
//

import SpriteKit

let kThickness = 10

class Grid: SKNode {
    
    let numberOfRows:Int
    let numberOfColumns:Int
    let boxWidth:Int
    let boxHeight:Int
    
    init(numberOfRows:Int,numberOfColumns:Int,boxWidth:Int,boxHeight:Int) {
        
        
        
        self.numberOfRows = numberOfRows
        self.numberOfColumns = numberOfColumns
        self.boxWidth = boxWidth
        self.boxHeight = boxHeight
        
        super.init()
        
        draw()
        
    }
    
    func draw() {
        
        for i in 0 ..< numberOfColumns{
            
            
            let line = SKShapeNode(rect: CGRect(x: i * boxWidth, y: -boxHeight, width: kThickness, height: boxHeight*(numberOfRows+1)))
            
            line.fillColor = SKColor.blue
            line.strokeColor = SKColor.blue
            
            addChild(line)
            
            
        }
        
        for i in 0 ..< numberOfRows{
            
            
            let line = SKShapeNode(rect: CGRect(x: -boxWidth, y: i * boxHeight, width: boxWidth*(numberOfColumns+1), height: kThickness))
            
            line.fillColor = SKColor.red
            line.strokeColor = SKColor.red
            
            addChild(line)
            
            
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
