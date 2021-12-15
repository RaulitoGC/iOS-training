//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audiooPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func KeyPressed(_ sender: UIButton) {
        sender.showsTouchWhenHighlighted = true
        if let text = sender.titleLabel?.text {
            playSound(text)
        }
        print("start")
        DispatchQueue.main.asyncAfter(
            deadline: .now() + .seconds(1 ), execute: {
                print("end")
            })
    }
    
    func playSound(_ name: String){
        let url = Bundle.main.url(forResource: name, withExtension: "wav")
        audiooPlayer = try! AVAudioPlayer(contentsOf: url!)
        audiooPlayer.play()
    }
}

