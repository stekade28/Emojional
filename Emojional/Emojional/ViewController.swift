//
//  ViewController.swift
//  Emojional
//
//  Created by Apple on 7/25/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func showMessage(sender: UIButton) {
        let randomize = Int.random(in: 0 ..< 3)
        let emojis = ["🍕" : "pizza", "🥞" : "pancakes", "🍟" : "fries"]
        let customMessage = ["pizza" : ["Cheesus Crust", "Have a slice day", "Pizzachu! I cheese you!"], "pancakes" : ["No one stacks up to you", "You're flippen' amazing!", "The thing about pancake jokes is that they always fall flat"], "fries" : ["Cookin' so fry", "Time fries when I'm with you", "It's FRYday!"]]
        let selectedEmotion = sender.titleLabel?.text
        let emojiMessage = customMessage[emojis[selectedEmotion!]!]?[randomize]
        
        let alertController = UIAlertController(title: "Emojional", message: emojiMessage , preferredStyle: UIAlertController.Style.alert)
                alertController.addAction(UIAlertAction(title :"Ok", style : UIAlertAction.Style.default, handler : nil))
                present(alertController, animated :true, completion : nil)
    
    }


        
        

}

