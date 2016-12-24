//
//  TopViewController.swift
//  XmasGreeting
//
//  Created by nishimura on 2016/12/18.
//  Copyright © 2016年 nishimura. All rights reserved.
//

import UIKit
import AVFoundation

class TopViewController: UIViewController {

    var bgmPlayer: AVAudioPlayer!
    var bgmPath: NSURL!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareBGM()
        
        playBGM()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapTreeButton(sender: AnyObject) {
        stopBGM()
    }
    
    func prepareBGM() {
        bgmPath = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("SnowFlakes", ofType: "mp3")!)
    }
    
    func playBGM() {
        do {
            bgmPlayer = try AVAudioPlayer(contentsOfURL: bgmPath)
            bgmPlayer.numberOfLoops = -1
            bgmPlayer.play()
        } catch {
            print("AVAudioPlayer error")
        }
    }
    
    func stopBGM() {
        bgmPlayer.stop()
    }

}

