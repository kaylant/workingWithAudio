//
//  ViewController.swift
//  workingWithAudio
//
//  Created by Kaylan Smith on 7/11/16.
//  Copyright © 2016 Kaylan Smith. All rights reserved.
//

import UIKit

// audio visual foundation framework
import AVFoundation

class ViewController: UIViewController {
    
    // this will act as a controller for our music
    var player: AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set path for player
        let audioPath = NSBundle.mainBundle().pathForResource("busoni-indiandiary-3-bertoli", ofType: "mp3")!
        
        do {
        
            // inserted path into player
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: audioPath))
            
            // will only attempt to make player play, if try line above works
            player.play()
            
        // if we cannot run player, do something else
        } catch {
        
            // Process error here
        
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

