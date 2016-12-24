//
//  TreeViewController.swift
//  XmasGreeting
//
//  Created by nishimura on 2016/12/18.
//  Copyright © 2016年 nishimura. All rights reserved.
//

import UIKit
import AVFoundation

class TreeViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!
    var audioPath: NSURL!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareBGM()
        
        playBGM()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func retrunTree (segue: UIStoryboardSegue) {
        
    }
    
    func prepareBGM() {
        audioPath = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("JingleBells", ofType: "mp3")!)
    }
    
    func playBGM() {
        do {
            audioPlayer = try AVAudioPlayer(contentsOfURL: audioPath)
            audioPlayer.numberOfLoops = -1
            audioPlayer.play()
        } catch {
            print("AVAudioPlayer error")
        }
    }
    
}
