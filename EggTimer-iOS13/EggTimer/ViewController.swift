//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let times = ["Soft" : 5, "Medium" : 7, "Hard" : 12]
    var counter = 0.0
    var limit = 0.0
    var timer = Timer()
    
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        progressView.progress = 0
        titleLabel.text = "How do you like your eggs?"
    }
    
    @objc func updateCounter() {
        if counter <= limit {
            let progress = counter / limit
            progressView.progress = Float(progress)
            counter += 0.1
        } else {
            titleLabel.text = "Done!!!"
            timer.invalidate()
        }
    }
    
    @IBAction func listener(_ sender: UIButton) {
        if let currentTitle = sender.currentTitle,
            let timeInMinutes = times[currentTitle] {
            startTimer(title: currentTitle, timeInMinutes: timeInMinutes)
        }
    }
    
    func startTimer(title: String, timeInMinutes: Int){
        self.counter = 0.0
        self.limit = Double(timeInMinutes)
        self.titleLabel.text = title
        self.timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
}
