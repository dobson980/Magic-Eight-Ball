//
//  8Ball.swift
//  Magic 8 Ball
//
//  Created by Tom Dobson on 8/10/17.
//  Copyright © 2017 Dobson Studios. All rights reserved.
//

import Foundation
import UIKit

class EightBall {
    
    let ballAnswers = [#imageLiteral(resourceName: "ball1"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball5")]
    
    func generateRandomAnswer() -> Int {
        return Int(arc4random_uniform(5))
    }
    
    func assignAnswer() -> UIImage {
        return ballAnswers[generateRandomAnswer()]
    }
    
    
    
}
