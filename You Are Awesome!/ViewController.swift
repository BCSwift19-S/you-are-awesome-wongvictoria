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
        if messageLabel.text == "You Are Awesome!" {
            messageLabel.text = "You Are Great!"
        } else if messageLabel.text == "You Are Great!" {
            messageLabel.text = "You Are Amazing!"
        } else {
            messageLabel.text = "You Are Awesome!"
        }

    }
 
    
}

