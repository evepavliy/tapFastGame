//
//  ViewController.swift
//  tapFast
//
//  Created by Ievgeniia Pavliuchyk on 22/01/2019.
//  Copyright © 2019 Ievgeniia Pavliuchyk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var startGameButton: UIButton!
    
    var timer = Timer()
    
    var timeInt = 10
    var scoreInt = 0
    var gameInt = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timeInt = 10
    }

    @IBAction func startGame(_ sender: Any) {
        
        if timeInt == 10 {
            
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(decreaseTimer ), userInfo: nil, repeats: true)
    
        }
        
    }
    
    @objc func decreaseTimer(){
        
        timeInt -= 1
        timeLabel.text = String(timeInt)
        
    }

   
    
}

