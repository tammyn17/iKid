//
//  PunViewController.swift
//  iKid
//
//  Created by Tammy Nguyen on 4/27/24.
//

import UIKit

class PunViewController: UIViewController {
    @IBOutlet weak var button: UIButton!    
    @IBOutlet weak var displayJoke: UILabel!
    
    let joke = ("Why couldn't the pasta unlock the door?", "Gnocchi")
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

