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
        let emojis = ["🍕" : "pizza", "🥞" : "pancakes", "🍟" : "fries", "🌮" : "taco", "🍿" : "popcorn", "🍔" : "burger"]
        
        let customMessage = ["pizza" : ["Cheesus Crust", "Have a slice day", "Pizzachu! I cheese you!"], "pancakes" : ["No one stacks up to you", "You're flippen' amazing!", "The thing about pancake jokes is that they always fall flat"], "fries" : ["Cookin' so fry", "Time fries when I'm with you", "It's FRYday!"], "taco" : ["Have a specTACOlar day!", "Taco 'bout awesome!", "I have fillings too!"], "popcorn" : ["Hope your day is poppin'", "Just poppin' in to say that you are fabulous", "Why aren't there many jokes about popcorn? Because they're corny"], "burger" : ["You hamBURGLED my heart", "Say double cheese!", "Did you hear about the hamburger that couldn't stop making jokes? It was on a roll"]]
        
        let selectedEmotion = sender.titleLabel?.text
        let emojiMessage = customMessage[emojis[selectedEmotion!]!]?[randomize]
        
        let alertController = UIAlertController(title: "Emojional", message: emojiMessage , preferredStyle: UIAlertController.Style.alert)
                alertController.addAction(UIAlertAction(title :"Ok", style : UIAlertAction.Style.default, handler : nil))
                present(alertController, animated :true, completion : nil)
    
    }


        
        

}

