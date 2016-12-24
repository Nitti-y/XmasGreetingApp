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
    
    var bgmPlayer: AVAudioPlayer!
    var bgmPath: NSURL!
    
    var bellSePlayer: AVAudioPlayer!
    var bellSePath: NSURL!
    
    var jollySePlayer: AVAudioPlayer!
    var jollySePath: NSURL!
    
    var magicSePlayer: AVAudioPlayer!
    var magicSePath: NSURL!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareBGM()
        prepareBellSE()
        prepareJollySE()
        prepareMagicSE()
        
        playBGM()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapBellButton(sender: AnyObject) {
        playBellSE()
    }
    
    @IBAction func tapGoldBootsButton(sender: AnyObject) {
        playJollySE()
    }
    
    @IBAction func tapBootsButton(sender: AnyObject) {
        playMagicSE()
    }
    
    @IBAction func retrunTree (segue: UIStoryboardSegue) {
        
    }
    
    func prepareBGM() {
        bgmPath = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("JingleBells", ofType: "mp3")!)
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
    
    func prepareBellSE() {
        bellSePath = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("SleighBellSingle", ofType: "mp3")!)
    }
    
    func playBellSE() {
        do {
            bellSePlayer = try AVAudioPlayer(contentsOfURL: bellSePath)
            bellSePlayer.play()
        } catch {
            print("AVAudioPlayer error")
        }
    }
    
    func prepareJollySE() {
        jollySePath = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("JollyLaugh", ofType: "mp3")!)
    }
    
    func playJollySE() {
        do {
            jollySePlayer = try AVAudioPlayer(contentsOfURL: jollySePath)
            jollySePlayer.play()
        } catch {
            print("AVAudioPlayer error")
        }
    }
    
    func prepareMagicSE() {
        magicSePath = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("Magic", ofType: "mp3")!)
    }
    
    func playMagicSE() {
        do {
            magicSePlayer = try AVAudioPlayer(contentsOfURL: magicSePath)
            magicSePlayer.play()
        } catch {
            print("AVAudioPlayer error")
        }
    }
    
}
