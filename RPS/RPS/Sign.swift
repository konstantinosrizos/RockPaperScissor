//
//  Sign.swift
//  RPS
//
//  Created by Konstantinos Rizos on 11/09/2018.
//  Copyright © 2018 Konstantinos Rizos. All rights reserved.
//

import Foundation
import GameplayKit


enum Sign {
    case rock
    case paper
    case scissor
    
    func gameState(versusSign: Sign) -> GameState {
        if self == versusSign {
            return .draw
        }
        switch self {
        case .rock:
            if versusSign == .scissor {
                return .win
            }
        case .paper:
            if versusSign == .rock {
                return .win
            }
        case .scissor:
            if versusSign == .paper {
                return .win
            }
        }
        return .lose
    }
    
    var textValue: String {
        switch self {
        case .rock: return "👊"
        case .paper: return "✋"
        case .scissor: return "✌️"
        }
    }
}

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissor
    }
}


