//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Victoria Wong on 1/22/19.
//  Copyright © 2019 Victoria Wong. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var awesomeImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    var awesomePlayer = AVAudioPlayer()
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 6

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        let messages = [ "You are Awesome!",
                         "You Are Great!",
                         "You Are Fantastic!",
                         "When the Genius Bar needs help, they call you",
                         "You brighten my day!",
                         "You are da bomb!",
                         "Hey, fabulous!",
                         "You are tremendous!",
                         "You've got the design skills of Jony Ive!",
                         "I can't wait to download your app!"]
        
        
        // var newIndex = -1
        var newIndex: Int // declares, but doesn't initialize newIndex
        
        // Show a message
        repeat {
            newIndex = Int.random(in: 0..<messages.count)
        }   while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
        // Show an Image
        repeat {
            newIndex = Int.random(in: 0..<numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        awesomeImageView.image = UIImage(named: "image\(imageIndex)")
        
        //Get a random number to use in our soundName file
        repeat {
            newIndex = Int.random(in: 0..<numberOfSounds)
        } while soundIndex == newIndex
        
        soundIndex = newIndex
        
        //Play a sound
        var soundName = "sound\(soundIndex)"
        
        //Can we load in file soundName?
        if let sound = NSDataAsset(name: soundName) {
            //check if sound.data is a sound file
            do {
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch {
                // if sound.data is not a valid audio file
                print ("ERROR: data in \(soundName) couldn't be played as a sound.")
            }
            
        } else {
            // if reading in the NSDataAsset didn't work, telel the developer / report the error.
            print ("ERROR: file \(soundName) didn't load")
        }
        
    }
}
    
        
//        messageLabel.text = messages.randomElement()!
        
//        messageLabel.text = messages[index]
//
//        if index == messages.count - 1 {
//            index = 0
//        } else {
//            index = index + 1
//        }
        
//        let message1 = "You Are Awesome!"
//        let message2 = "You Are Great!"
//        let message3 = "You Are Amazing!"
//
//
//        if messageLabel.text == message1 {
//            messageLabel.text = message2
//        } else if messageLabel.text == message2 {
//            messageLabel.text = message3
//        } else {
//            messageLabel.text = message1
//        }


 
    


