//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Tom Dobson on 8/10/17.
//  Copyright © 2017 Dobson Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var eightBall: UIImageView!
    
    let ball = EightBall()
    let eightBallSound = EightBallSound(filePath: "water", ext: "wav")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        eightBallSound?.prepareSound()
        
    }
    
    func answerQuestion() {
        
        eightBall.image = ball.assignAnswer()
        
    }

    @IBAction func askBtnPressed(_ sender: Any) {
        
        answerQuestion()
        eightBallSound?.play()
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        answerQuestion()
        eightBallSound?.play()
        
    }
    
}

