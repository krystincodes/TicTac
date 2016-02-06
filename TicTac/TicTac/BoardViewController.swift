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
    @IBOutlet weak var buttonZero: UIButton!
    @IBOutlet weak var buttonZeroOne: UIButton!
    @IBOutlet weak var buttonZeroTwo: UIButton!
    @IBOutlet weak var buttonOneZero: UIButton!
    @IBOutlet weak var buttonOneOne: UIButton!
    @IBOutlet weak var buttonOneTwo: UIButton!
    @IBOutlet weak var buttonTwoZero: UIButton!
    @IBOutlet weak var buttonTwoOne: UIButton!
    @IBOutlet weak var buttonTwoTwo: UIButton!
    @IBOutlet weak var winnerLabel: UILabel!
    
    var isPlayersTurn: Bool = true
    var xOrO = ""
    var zeroZero = ""
    var zeroOne = ""
    var zeroTwo = ""
    var oneZero = ""
    var oneOne = ""
    var oneTwo = ""
    var twoZero = ""
    var twoOne = ""
    var twoTwo = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchTurns()
        
        // TODO 3: Change player labels
        
        // TODO 4: Change X and O button colors
    }
    
    
    private func switchTurns() {
        isPlayersTurn = !isPlayersTurn
        if isPlayersTurn {
            // TODO 5: Change player label colors
            playerOneLabel.textColor = UIColor.orangeColor()
            playerTwoLabel.textColor = UIColor.grayColor()
            xOrO = "X"
        }
        else {
            playerTwoLabel.textColor = UIColor.orangeColor()
            playerOneLabel.textColor = UIColor.grayColor()
            xOrO = "O"
        }
    }
    
    private func winner() {
        // TODO 6: edit label text

        // TODO 7: hide board

    }
    
    
    
    
    // First row of buttons
    @IBAction func buttonZeroClicked(sender: AnyObject) {
        buttonZero.enabled = false
        buttonZero.setTitle(xOrO, forState: .Normal)
        zeroZero = xOrO
        checkZeroZero()
    }
    
    @IBAction func buttonZeroOneClicked(sender: AnyObject) {
        buttonZeroOne.enabled = false
        buttonZeroOne.setTitle(xOrO, forState: .Normal)
        zeroOne = xOrO
        checkZeroOne()
    }
    
    @IBAction func buttonZeroTwoClicked(sender: AnyObject) {
        buttonZeroTwo.enabled = false
        buttonZeroTwo.setTitle(xOrO, forState: .Normal)
        zeroTwo = xOrO
        checkZeroTwo()
    }
    
    // Second row of buttons
    @IBAction func buttonOneZeroClicked(sender: AnyObject) {
        buttonOneZero.enabled = false
        buttonOneZero.setTitle(xOrO, forState: .Normal)
        oneZero = xOrO
        checkOneZero()
    }
    
    @IBAction func buttonOneOneClicked(sender: AnyObject) {
        buttonOneOne.enabled = false
        buttonOneOne.setTitle(xOrO, forState: .Normal)
        oneOne = xOrO
        checkOneOne()
    }
    
    @IBAction func buttonOneTwoClicked(sender: AnyObject) {
        buttonOneTwo.enabled = false
        buttonOneTwo.setTitle(xOrO, forState: .Normal)
        oneTwo = xOrO
        checkOneTwo()
    }
    
    // Third row of buttons
    @IBAction func buttonTwoZeroClicked(sender: AnyObject) {
        buttonTwoZero.enabled = false
        buttonTwoZero.setTitle(xOrO, forState: .Normal)
        twoZero = xOrO
        checkTwoZero()
    }
    
    @IBAction func buttonTwoOneClicked(sender: AnyObject) {
        buttonTwoOne.enabled = false
        buttonTwoOne.setTitle(xOrO, forState: .Normal)
        twoOne = xOrO
        checkTwoOne()
    }
    
    @IBAction func buttonTwoTwoClicked(sender: AnyObject) {
        buttonTwoTwo.enabled = false
        buttonTwoTwo.setTitle(xOrO, forState: .Normal)
        twoTwo = xOrO
        checkTwoTwo()
    }
    
    
    
    
    
    
    
    
    
    // MARK: Check winner functions
    private func checkZeroZero() {
        // top row
        if zeroZero == zeroOne && zeroOne == zeroTwo {
            winner()
            return
        }
        
        // left
        if zeroZero == oneZero && oneZero == twoZero {
            winner()
            return
        }
        
        // diagonal from top left
        if zeroZero == oneOne && oneOne == twoTwo {
            winner()
            return
        }
        switchTurns()
    }
    
    private func checkZeroOne() {
        // top row
        if zeroZero == zeroOne && zeroOne == zeroTwo {
            winner()
            return
        }
        
        // middle
        if zeroOne == oneOne && oneOne == twoOne {
            winner()
            return
        }
        switchTurns()
    }
    
    private func checkZeroTwo() {
        // top row
        if zeroZero == zeroOne && zeroOne == zeroTwo {
            winner()
            return
        }
        // right
        if zeroTwo == oneTwo && oneTwo == twoTwo {
            winner()
            return
        }
        // diagonal from top right
        if zeroTwo == oneOne && oneOne == twoZero {
            winner()
            return
        }
        switchTurns()
    }
    
    private func checkOneZero() {
        // left
        if zeroZero == oneZero && oneZero == twoZero {
            winner()
            return
        }
        
        // second row
        if oneZero == oneOne && oneOne == oneTwo {
            winner()
            return
        }
        switchTurns()
    }
    
    private func checkOneOne() {
        // second row
        if oneZero == oneOne && oneOne == oneTwo {
            winner()
            return
        }
        
        // middle
        if zeroOne == oneOne && oneOne == twoOne {
            winner()
            return
        }
        // diagonal from top right
        if zeroTwo == oneOne && oneOne == twoZero {
            winner()
            return
        }
        // diagonal from top left
        if zeroZero == oneOne && oneOne == twoTwo {
            winner()
            return
        }
        switchTurns()
    }
    
    private func checkOneTwo() {
        // second row
        if oneZero == oneOne && oneOne == oneTwo {
            winner()
            return
        }
        // right
        if zeroTwo == oneTwo && oneTwo == twoTwo {
            winner()
            return
        }
        switchTurns()
    }
    
    private func checkTwoZero() {
        // left
        if zeroZero == oneZero && oneZero == twoZero {
            winner()
            return
        }
        
        // bottom row
        if twoZero == twoOne && twoOne == twoTwo {
            winner()
            return
        }
        // diagonal from top right
        if zeroTwo == oneOne && oneOne == twoZero {
            winner()
            return
        }
        switchTurns()
    }
    
    private func checkTwoOne() {
        // bottom row
        if twoZero == twoOne && twoOne == twoTwo {
            winner()
            return
        }
        
        // middle
        if zeroOne == oneOne && oneOne == twoOne {
            winner()
            return
        }
        switchTurns()
    }
    
    private func checkTwoTwo() {
        // bottom row
        if twoZero == twoOne && twoOne == twoTwo {
            winner()
            return
        }
        
        // right
        if zeroTwo == oneTwo && oneTwo == twoTwo {
            winner()
            return
        }
        // diagonal from top left
        if zeroZero == oneOne && oneOne == twoTwo {
            winner()
            return
        }
        switchTurns()
    }
}
