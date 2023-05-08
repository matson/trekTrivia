//
//  QuizBrain.swift
//  trekTrivia
//
//  Created by Tracy Adams on 5/8/23.
//

import Foundation

struct QuizBrain {
    
    let quiz = [
        Question(q:"Spocks greenish skin was originally meant to be red", a: "True"),
        Question(q:"A lot of Star Trek technology became reality", a: "True"),
        Question(q:"Star Trek's Vulcan salute is not a Hebrew blessing", a:"False"),
        Question(q:"Star Trek only wanted to include an attractive female cast", a:"True"),
        Question(q:"Malcolm McDowell receieved death threats after killing Captain Kirk onscreen", a:"True"),
        Question(q:"Star Trek's episodes are not in chronological order", a:"True"),
        Question(q:"The original series takes places from 1000 to 3000", a:"False")
        ]
    
    var questionNumber = 0 
    
    //external parameter
    func checkAnswer(_ userAnswer: String){
        if userAnswer === quiz[questionNumer].answer {
            sender.backgroundColor = UIColor.green
            //user got it right
        }
        else{
            sender.backgroundColor = UIColor.red
            //user got it wrong
        }
        
    }
    
}
