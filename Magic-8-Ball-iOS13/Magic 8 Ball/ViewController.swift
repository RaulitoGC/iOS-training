//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = [#colorLiteral(red: 0.09411764706, green: 0.1137254902, blue: 0.1921568627, alpha: 1),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        let randomNumber = Int.random(in: 1...5)
        let resourceName = "ball\(randomNumber)"
        imageView.image = UIImage(named: resourceName)
    }
    
}

