//
//  QuestionBrain.swift.swift
//  Quizzler-iOS13
//
//  Created by Raul Jonathan Guzman Condor on 22/12/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct QuestionBrain {
    let quiz = [
        Question(name: "A slug's blood is green.", answer: "True"),
        Question(name: "Approximately one quarter of human bones are in the feet.", answer: "True"),
        Question(name: "The total surface area of two human lungs is approximately 70 square metres.", answer: "True"),
        Question(name: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", answer: "True"),
        Question(name: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funerquestionl, because the building is considered too sacred a place.", answer: "False"),
        Question(name: "It is illegal to pee in the Ocean in Portugal.", answer: "True"),
        Question(name: "You can lead a cow down stairs but not up stairs.", answer: "False"),
        Question(name: "Google was originally called 'Backrub'.", answer: "True"),
        Question(name: "Buzz Aldrin's mother's maiden name was 'Moon'.", answer: "True"),
        Question(name: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", answer: "False"),
        Question(name: "No piece of square dry paper can be folded in half more than 7 times.", answer: "False"),
        Question(name: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", answer: "True")
        
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if quiz[questionNumber].answer == userAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    mutating func updateNextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    func getCurrentQuestionText() -> String {
        quiz[questionNumber].name
    }
    
    func getCurrentProgress() -> Float {
        return Float(questionNumber + 1)/Float(quiz.count)
    }
    
    func getScore() -> Int {
        return score
    }
}
