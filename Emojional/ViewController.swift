//
//  ViewController.swift
//  Emojional
//
//  Created by Kate Zhang on 5/8/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    let emojis = ["😃": ["Yay!", "That's awesome!", "Glad to see it!"],
                  "😔": ["It gets better!","Don't feel bad!","Why so glum, chum?"],
                  "😤": ["Calm down!","Keep your cool!","Don't let the anger get to your head!"],
                  "🤓": ["Love to see you geeking out!","Quite the enthusiast!","You're so cool!"],
                  "😰": ["Calm down!","Don't be nervous!","Don't worry, you got this!"],
                  "🤡": ["You're such a goofball!","Putting on my clown makeup rn","Getting ready to perform at the circus!"]]
    
    
    let colors = [UIColor.black, UIColor.darkGray, UIColor.brown, UIColor.systemIndigo, UIColor.blue, UIColor.systemTeal, UIColor.systemGreen]
    
    
    @IBAction func showMessage(sender: UIButton) {
        let emotion = sender.titleLabel?.text
        let num = Int.random(in: 0..<3)
        let array = emojis[emotion!]
        
        let alertController = UIAlertController(title: "Feeling \(emotion!)", message: "\(array![num])", preferredStyle: UIAlertController.Style.alert)
       
        alertController.addAction(UIAlertAction(title: "Got it!", style: UIAlertAction.Style.default, handler: nil))
        
        alertController.view.layer.cornerRadius = 80
        
        alertController.view.tintColor = colors[Int.random(in: 0..<colors.count)]
       
        present(alertController, animated: true, completion: nil)
    }
    
    
}
