//
//  DadViewController.swift
//  iKid
//
//  Created by Tammy Nguyen on 4/27/24.
//

import UIKit

class DadViewController: UIViewController {
    @IBOutlet weak var displayJoke: UILabel!
    @IBOutlet weak var button: UIButton!
    
    let joke = ("What did the blanket say as it fell off the bed?", "Oh sheet!")
    var showingPunchline = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayTheJoke()
    }
    
    @IBAction func toggleJoke() {
        if showingPunchline {
            UIView.transition(with: displayJoke, duration: 0.5, options: .transitionFlipFromRight, animations: {
                self.displayTheJoke()
            }, completion: nil)
        } else {
            UIView.transition(with: displayJoke, duration: 0.5, options: .transitionFlipFromLeft, animations: {
                self.displayThePunchline()
            }, completion: nil)
        }
        showingPunchline.toggle()
    }
    
    func displayTheJoke() {
        displayJoke.text = joke.0
        button.setTitle("Next", for: .normal)
    }
    
    func displayThePunchline() {
        displayJoke.text = joke.1
        button.setTitle("Back", for: .normal)
    }
}

