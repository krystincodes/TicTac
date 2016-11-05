//
//  BoardViewController.swift
//  TicTac
//
//  Created by Krystin Stutesman on 2/5/16.
//  Copyright © 2016 Krystin Stutesman. All rights reserved.
//

import UIKit

class BoardViewController: UIViewController {
    
    @IBOutlet weak var boardView: UIView!
    @IBOutlet weak var playerOneLabel: UILabel!
    @IBOutlet weak var playerTwoLabel: UILabel!
    @IBOutlet weak var winnerLabel: UILabel!
    
    var isPlayersTurn: Bool = false
    var playerOneName: String?
    var playerTwoName: String?
    var isPlayingComputer: Bool = false
    var ticTacToeView: TicTacToeView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ticTacToeNib = UINib(nibName: "TicTacToeView", bundle: Bundle.main)
        ticTacToeView = ticTacToeNib.instantiate(withOwner: self, options: nil).first as! TicTacToeView
        boardView.addSubview(ticTacToeView)
        
        NotificationCenter.default.addObserver(self, selector: #selector(BoardViewController.winner(_:)), name:NSNotification.Name(rawValue: "winner"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(BoardViewController.switchTurns(_:)), name:NSNotification.Name(rawValue: "switchTurns"), object: nil)
        
        isPlayersTurn = true
        playerOneLabel.textColor = UIColor(netHex:0x27ae60)
        playerTwoLabel.textColor = UIColor(netHex:0x2c3e50)
        ticTacToeView.xOrO = "X"
        
        playerOneLabel.text = playerOneName
        if isPlayingComputer {
            playerTwoLabel.text = "Computer"
        } else {
            playerTwoLabel.text = playerTwoName
        }
    }
    
    func switchTurns(_ notification: Notification) {
        isPlayersTurn = !isPlayersTurn
        if isPlayersTurn {
            playerOneLabel.textColor = UIColor(netHex:0x27ae60)
            playerTwoLabel.textColor = UIColor(netHex:0x2c3e50)
            ticTacToeView.xOrO = "X"
        }
        else {
            playerTwoLabel.textColor = UIColor(netHex:0x27ae60)
            playerOneLabel.textColor = UIColor(netHex:0x2c3e50)
            ticTacToeView.xOrO = "O"
        }
    }
    
    func winner(_ notification: Notification) {
        var whoWon = ""
        if isPlayingComputer {
            whoWon = isPlayersTurn ? playerOneName! : "Computer"
        } else {
            whoWon = isPlayersTurn ? playerOneName! : playerTwoName!
        }
        
        winnerLabel.text = "\(whoWon) wins!"

        UIView.animate(withDuration: 0.3, animations: {
            self.boardView.alpha = 0
            self.boardView.isHidden = true
        }) 
    }
}
