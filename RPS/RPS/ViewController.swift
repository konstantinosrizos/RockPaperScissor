//
//  ViewController.swift
//  RPS
//
//  Created by Konstantinos Rizos on 11/09/2018.
//  Copyright © 2018 Konstantinos Rizos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AppSign: UILabel!
    @IBOutlet weak var StatusOfTheGame: UILabel!
    @IBOutlet weak var RockBtn: UIButton!
    @IBOutlet weak var PaperBtn: UIButton!
    @IBOutlet weak var ScissorBtn: UIButton!
    @IBOutlet weak var PlayAgain: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update(forGameStatus: .start)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func RockBtn(_ sender: Any) {
        play(.rock)
    }
    
    @IBAction func PaperBtn(_ sender: Any) {
        play(.paper)
    }
    
    @IBAction func ScissorBtn(_ sender: Any) {
        play(.scissor)
    }
    
    @IBAction func PlayAgainBtn(_ sender: Any) {
        update(forGameStatus: .start)
    }
    
    func update(forGameStatus gameState: GameState) {
        
        StatusOfTheGame.text = gameState.status
        switch gameState {
        case .start:
            view.backgroundColor = UIColor.white
            AppSign.text = "👻"
            
            RockBtn.isEnabled = true
            RockBtn.isHidden = false
            
            PaperBtn.isEnabled = true
            PaperBtn.isHidden = false
            
            ScissorBtn.isEnabled = true
            ScissorBtn.isHidden = false
            
            PlayAgain.isHidden = true
            
        case .win:
            view.backgroundColor = UIColor.green
        case .lose:
            view.backgroundColor = UIColor.red
        case .draw:
            view.backgroundColor = UIColor.blue
        }
        
    }
    
    func play(_ playerSign: Sign) {
        let opponentSign = randomSign()
        let gamseState = playerSign.gameState(versusSign: opponentSign)
        update(forGameStatus: gamseState)
        
        AppSign.text = opponentSign.textValue
        
        RockBtn.isEnabled = false
        RockBtn.isHidden = true
        
        PaperBtn.isEnabled = false
        PaperBtn.isHidden = true
        
        ScissorBtn.isEnabled = false
        ScissorBtn.isHidden = true
        
        switch playerSign {
        case .paper:
            PaperBtn.isHidden = false
        case .rock:
            RockBtn.isHidden = false
        case .scissor:
            ScissorBtn.isHidden = false
        }
        
        PlayAgain.isHidden = false
    }
}



