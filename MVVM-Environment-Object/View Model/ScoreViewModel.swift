//
//  ScoreViewModel.swift
//  MVVM-Environment-Object
//
//  Created by Binaya on 02/10/2021.
//

import Foundation

class ScoreViewModel: ObservableObject {
    
    @Published private var score = Score(value: 0)
    
    var scoreValue: Int {
        return score.value
    }
    
    // Intents
    
    func increaseScore() {
        score.value += 1
    }
    
    func decreaseScore() {
        if score.value > 0 {
            score.value -= 1
        }
    }
    
}
