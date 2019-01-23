//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Victoria Wong on 1/22/19.
//  Copyright © 2019 Victoria Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        let message1 = "You Are Awesome!"
        let message2 = "You Are Great!"
        let message3 = "You Are Amazing!"
       
        
        if messageLabel.text == message1 {
            messageLabel.text = message2
        } else if messageLabel.text == message2 {
            messageLabel.text = message3
        } else {
            messageLabel.text = message1
        }

    }
 
    
}

