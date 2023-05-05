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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func answerPressed(_ sender: UIButton) {
        
        print("pressed")
        
    }
    
    
    
    
    
}

