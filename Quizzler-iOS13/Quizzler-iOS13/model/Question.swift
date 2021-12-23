//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Raul Jonathan Guzman Condor on 22/12/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    
    let name : String
    let answer : String
    
    init(name: String, answer: String) {
        self.name = name
        self.answer = answer
    }
}
