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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO 1: Change buton color
        
        // TODO 2: Change label color
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "goToGameSegue" {
            let destVC = segue.destinationViewController as! BoardViewController
            // TODO 9: Pass the variable
        }
    }
}

