//
//  ViewController.swift
//  trekTrivia
//
//  Created by Tracy Adams on 5/5/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var trueButton: UIButton! {
        didSet{
            trueButton.backgroundColor = .clear
            trueButton.layer.cornerRadius = 10
            trueButton.layer.borderWidth = 2
            trueButton.layer.borderColor = UIColor.white.cgColor
        }
    }
    
    @IBOutlet weak var falseButton: UIButton! {
        didSet{
            falseButton.backgroundColor = .clear
            falseButton.layer.cornerRadius = 10
            falseButton.layer.borderWidth = 2
            falseButton.layer.borderColor = UIColor.white.cgColor
        }
    }
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    //an instance
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //need this or else nothing will appear; just the default screen settings.
        updateUI()
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        
        //check the question/answer
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if(userGotItRight){
            sender.backgroundColor = UIColor.green
           
        }else{
            sender.backgroundColor = UIColor.red
           
        }
        
        quizBrain.nextQuestion()
        
       Timer.scheduledTimer(timeInterval: 0.2, target: self, selector:
        #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI(){
        //These will get called 
        questionLabel.text = quizBrain.getQuestion()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.getProgress()
        
    }
    
}


