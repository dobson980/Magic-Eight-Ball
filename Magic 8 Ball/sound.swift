//
//  sound.swift
//  Magic 8 Ball
//
//  Created by Tom Dobson on 8/10/17.
//  Copyright © 2017 Dobson Studios. All rights reserved.
//

import Foundation
import AVFoundation

protocol soundBytePath {
    var path: String { get set }
}

protocol soundByteURL {
    var ballURL: URL { get set }
}

class EightBallSound: soundBytePath, soundByteURL {
    
    var path: String
    var ballURL: URL
    var audioPlayer: AVAudioPlayer!
    
    init?(filePath: String, ext: String) {
        
        self.path = Bundle.main.path(forResource: filePath, ofType: ext)!
        self.ballURL = URL(fileURLWithPath: path)
        
    }
    
    func prepareSound() {
        
        do {
            
            try audioPlayer = AVAudioPlayer(contentsOf: ballURL)
            
        } catch let error as NSError {
            
            print("\(error.debugDescription)")
            print("Failed to prepare sound")
            
        }
    }
    
    func play() {
        
        if audioPlayer.isPlaying {
            
            audioPlayer.stop()
            audioPlayer.currentTime = 0
            
        }
        
        audioPlayer.play()
        
    }
    
    
}
