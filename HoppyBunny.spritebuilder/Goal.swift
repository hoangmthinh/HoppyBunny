//
//  Goal.swift
//  HoppyBunny
//
//  Created by Thinh Hoang on 1/6/16.
//  Copyright © 2016 Apportable. All rights reserved.
//

import Foundation

class Goal : CCNode {
    
    func didLoadFromCCB(){
        physicsBody.sensor = true
    }
}
