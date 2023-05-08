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
    
    //an instance
    var quizBrain = QuizBrain()

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //questionLabel.text = "Ask something"
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func answerPressed(_ sender: UIButton) {
        
        //check the question/answer
        let userAnswer = sender.currentTitle!
        quizBrain.checkAnswer(userAnswer)
        //if the answerpressed === questionAnswer:
        //stopped here. Function outputs. 
        
        //Progressing Questions:
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
            
        }else{
            questionNumber = 0
        }
        
        //print("pressed")
        
    }
    
    func updateUI(){
        //progressBar.progress = Float(questionNum + 1)/Float(quiz.count)
        
    }
    
    
    
    
    
}

//need to work on UI -need constraints on everything
//timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)

