//
//  GoodViewController.swift
//  iKid
//
//  Created by Tammy Nguyen on 4/27/24.
//

import UIKit

class GoodViewController: UIViewController {
    @IBOutlet weak var displayJoke: UILabel!
    @IBOutlet weak var button: UIButton!
    
    let joke = ["Knock knock!", "Who’s there?", "Nobel", "Nobel who?", "No bell. That's why I knocked"]
    var currJoke = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayTheJoke()
    }
    
    @IBAction func toggleJoke() {
        if currJoke < joke.count - 1 {
            currJoke += 1
            UIView.transition(with: displayJoke, duration: 0.5, options: .transitionFlipFromRight, animations: {
                self.displayTheJoke()
            }, completion: nil)
        } else {
            currJoke = 0
            UIView.transition(with: displayJoke, duration: 0.5, options: .transitionFlipFromLeft, animations: {
                self.displayTheJoke()
            }, completion: nil)
        }
    }
    
    func displayTheJoke() {
        displayJoke.text = joke[currJoke]
        updateButton()
    }
    
    func updateButton() {
        if currJoke < joke.count - 1 {
            button.setTitle("Next", for: .normal)
        } else {
            button.setTitle("Back", for: .normal)
        }
    }
}

