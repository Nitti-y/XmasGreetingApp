//
//  CardViewController.swift
//  XmasGreeting
//
//  Created by nishimura on 2016/12/18.
//  Copyright © 2016年 nishimura. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {

    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backButton.layer.cornerRadius = 10
        backButton.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
