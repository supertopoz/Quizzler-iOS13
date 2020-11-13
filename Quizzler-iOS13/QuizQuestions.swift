//
//  QuizQuestions.swift
//  Quizzler-iOS13
//
//  Created by Jason.Allshorn on 2020/11/14.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Quiz {
    var questions: [String]
    var answers: [String]
    
    
    init(questions: [String], answers: [String]) {
        self.questions = questions   
       self.answers =  answers
    }
}
