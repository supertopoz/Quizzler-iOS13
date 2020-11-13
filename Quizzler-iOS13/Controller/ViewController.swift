//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    

    var quizBrain = QuizBrain()
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let answer = quizBrain.checkAnswer(userAnswer)
        
        if answer {
            sender.backgroundColor = .green
        } else {
            sender.backgroundColor = .red
        }
        if quizBrain.questionNumber < quizBrain.quiz.count - 1 {
            quizBrain.questionNumber += 1
        } else {
            quizBrain.questionNumber = 0
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            // Excecute after 3 seconds
            self.updateUI()
        }
    }
    
    func updateUI(){
        questionLabel.text = quizBrain.quiz[quizBrain.questionNumber].question
        
        self.trueButton.backgroundColor = .clear
        self.falseButton.backgroundColor = .clear
        progressBar.progress = Float(quizBrain.questionNumber + 1) / Float(quizBrain.quiz.count)

    }
    
}

