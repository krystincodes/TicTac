//
//  ViewController.swift
//  TicTac
//
//  Created by Krystin Stutesman on 2/5/16.
//  Copyright © 2016 Krystin Stutesman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // TODO 8: Create text box and connect it
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var playerOneTextField: UITextField!
    @IBOutlet weak var computerLabel: UILabel!
    @IBOutlet weak var playerTwoTextField: UITextField!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentedControl.selectedSegmentIndex = 1
        computerLabel.hidden = true
        computerLabel.alpha = 0
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "goToGameSegue" {
            let destVC = segue.destinationViewController as! BoardViewController
            destVC.playerOneName = playerOneTextField.text
            destVC.playerTwoName = playerTwoTextField.text
        }
    }
    
    @IBAction func segmentedControlChanged(sender: AnyObject) {
        let control = sender as! UISegmentedControl
        
        UIView.animateWithDuration(0.3, animations: {
            if control.selectedSegmentIndex == 0 {
                self.playerTwoTextField.alpha = 0
                self.playerTwoTextField.hidden = true
            } else {
                self.computerLabel.alpha = 0
                self.computerLabel.hidden = true
            }
            }, completion: { _ in
                if control.selectedSegmentIndex == 0 {
                    self.computerLabel.hidden = false
                    self.computerLabel.alpha = 1
                } else {
                    self.playerTwoTextField.hidden = false
                    self.playerTwoTextField.alpha = 1
                }
        })
    }
}

