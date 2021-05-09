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
    
    
    let emojis = ["😃": "ugly crying", "😔": "happy", "😤": "pissed", "🤓": "nerdy", "😰": "nervous", "🤡": "clown"]
    
    
    @IBAction func showMessage(sender: UIButton) {
      //let selectedEmotion = sender.titleLabel?.text
        let alertController = UIAlertController(title: "Testing 123", message: "Well hello there", preferredStyle: UIAlertController.Style.alert)
       alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
       present(alertController, animated: true, completion: nil)
    }

    
    
}
