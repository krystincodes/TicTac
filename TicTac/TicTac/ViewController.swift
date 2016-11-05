//
//  ViewController.swift
//  TicTac
//
//  Created by Krystin Stutesman on 2/5/16.
//  Copyright © 2016 Krystin Stutesman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var playerOneTextField: UITextField!
    @IBOutlet weak var computerLabel: UILabel!
    @IBOutlet weak var playerTwoTextField: UITextField!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO 3: Add option for playing against another person
        segmentedControl.selectedSegmentIndex = 1
        computerLabel.isHidden = true
        computerLabel.alpha = 0
    }
    
    // TODO 1: Add some custom color
    
    
    
    // TODO 2: Fix broken navigation

    
    
    // TODO 7: Pass name variables to next screen
    
    @IBAction func segmentedControlChanged(_ sender: AnyObject) {
        let control = sender as! UISegmentedControl
        
        UIView.animate(withDuration: 0.3, animations: {
            if control.selectedSegmentIndex == 0 {
                self.playerTwoTextField.alpha = 0
                self.playerTwoTextField.isHidden = true
            } else {
                self.computerLabel.alpha = 0
                self.computerLabel.isHidden = true
            }
            }, completion: { _ in
                if control.selectedSegmentIndex == 0 {
                    self.computerLabel.isHidden = false
                    self.computerLabel.alpha = 1
                } else {
                    self.playerTwoTextField.isHidden = false
                    self.playerTwoTextField.alpha = 1
                }
        })
    }
}

