//
//  Obstacle.swift
//  HoppyBunny
//
//  Created by Thinh Hoang on 1/5/16.
//  Copyright © 2016 Apportable. All rights reserved.
//

import Foundation

class Obstacle : CCNode {
    weak var topCarrot : CCNode!
    weak var bottomCarrot : CCNode!
    
    let topCarrotMinPosY : CGFloat = 128
    let bottomCarrotMaxPosY : CGFloat = 440
    
    let carrotDistance : CGFloat = 142
    
    func didLoadFromCCB() {
        topCarrot.physicsBody.sensor = true
        bottomCarrot.physicsBody.sensor = true
    }
    
    func setupRandomPosition() {
        let randomPrecision : UInt32 = 100
        let random = CGFloat(arc4random_uniform(randomPrecision)) / CGFloat(randomPrecision)
        let range = bottomCarrotMaxPosY - carrotDistance - topCarrotMinPosY
        
        topCarrot.position = ccp(topCarrot.position.x, topCarrotMinPosY + (random * range))
        bottomCarrot.position = ccp(bottomCarrot.position.x, topCarrot.position.y + carrotDistance)
        
        
    }
}