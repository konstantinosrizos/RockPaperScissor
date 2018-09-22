//
//  GameState.swift
//  RPS
//
//  Created by Konstantinos Rizos on 11/09/2018.
//  Copyright © 2018 Konstantinos Rizos. All rights reserved.
//

import Foundation

enum GameState {
    case start
    case win
    case lose
    case draw
    
    var status: String {
        switch self {
        case .start:
            return "Rock, Paper, Scissors?"
        case .win:
            return "You Won!"
        case .lose:
            return "You Lost!"
        case .draw:
            return "It's a Draw!"
        }
    }
}

