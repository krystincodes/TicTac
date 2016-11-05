//
//  TicTacToeView.swift
//  TicTac
//
//  Created by Krystin Stutesman on 3/10/16.
//  Copyright © 2016 Krystin Stutesman. All rights reserved.
//

import UIKit

class TicTacToeView: UIView {
    
    @IBOutlet weak var buttonZeroZero: UIButton!
    @IBOutlet weak var buttonZeroOne: UIButton!
    @IBOutlet weak var buttonZeroTwo: UIButton!
    @IBOutlet weak var buttonOneZero: UIButton!
    @IBOutlet weak var buttonOneOne: UIButton!
    @IBOutlet weak var buttonOneTwo: UIButton!
    @IBOutlet weak var buttonTwoZero: UIButton!
    @IBOutlet weak var buttonTwoOne: UIButton!
    @IBOutlet weak var buttonTwoTwo: UIButton!
    
    var zeroZero = ""
    var zeroOne = ""
    var zeroTwo = ""
    var oneZero = ""
    var oneOne = ""
    var oneTwo = ""
    var twoZero = ""
    var twoOne = ""
    var twoTwo = ""
    var xOrO = ""
    
    // First row of buttons
    @IBAction func buttonZeroClicked(_ sender: AnyObject) {
        buttonZeroZero.isEnabled = false
        buttonZeroZero.setTitle(xOrO, for: UIControlState())
        zeroZero = xOrO
        checkZeroZero()
    }
    
    @IBAction func buttonZeroOneClicked(_ sender: AnyObject) {
        buttonZeroOne.isEnabled = false
        buttonZeroOne.setTitle(xOrO, for: UIControlState())
        zeroOne = xOrO
        checkZeroOne()
    }
    
    @IBAction func buttonZeroTwoClicked(_ sender: AnyObject) {
        buttonZeroTwo.isEnabled = false
        buttonZeroTwo.setTitle(xOrO, for: UIControlState())
        zeroTwo = xOrO
        checkZeroTwo()
    }
    
    // Second row of buttons
    @IBAction func buttonOneZeroClicked(_ sender: AnyObject) {
        buttonOneZero.isEnabled = false
        buttonOneZero.setTitle(xOrO, for: UIControlState())
        oneZero = xOrO
        checkOneZero()
    }
    
    @IBAction func buttonOneOneClicked(_ sender: AnyObject) {
        buttonOneOne.isEnabled = false
        buttonOneOne.setTitle(xOrO, for: UIControlState())
        oneOne = xOrO
        checkOneOne()
    }
    
    @IBAction func buttonOneTwoClicked(_ sender: AnyObject) {
        buttonOneTwo.isEnabled = false
        buttonOneTwo.setTitle(xOrO, for: UIControlState())
        oneTwo = xOrO
        checkOneTwo()
    }
    
    // Third row of buttons
    @IBAction func buttonTwoZeroClicked(_ sender: AnyObject) {
        buttonTwoZero.isEnabled = false
        buttonTwoZero.setTitle(xOrO, for: UIControlState())
        twoZero = xOrO
        checkTwoZero()
    }
    
    @IBAction func buttonTwoOneClicked(_ sender: AnyObject) {
        buttonTwoOne.isEnabled = false
        buttonTwoOne.setTitle(xOrO, for: UIControlState())
        twoOne = xOrO
        checkTwoOne()
    }
    
    @IBAction func buttonTwoTwoClicked(_ sender: AnyObject) {
        buttonTwoTwo.isEnabled = false
        buttonTwoTwo.setTitle(xOrO, for: UIControlState())
        twoTwo = xOrO
        checkTwoTwo()
    }
    
    
    fileprivate func winner() {
        NotificationCenter.default.post(name: Notification.Name(rawValue: "winner"), object: nil)
    }
    
    fileprivate func switchTurns() {
        NotificationCenter.default.post(name: Notification.Name(rawValue: "switchTurns"), object: nil)
    }
    
    // MARK: Check winner functions
    fileprivate func checkZeroZero() {
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
    
    fileprivate func checkZeroOne() {
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
    
    fileprivate func checkZeroTwo() {
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
    
    fileprivate func checkOneZero() {
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
    
    fileprivate func checkOneOne() {
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
    
    fileprivate func checkOneTwo() {
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
    
    fileprivate func checkTwoZero() {
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
    
    fileprivate func checkTwoOne() {
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
    
    fileprivate func checkTwoTwo() {
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
