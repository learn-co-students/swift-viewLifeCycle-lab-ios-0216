//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var topLeft: UIView!
    @IBOutlet weak var midLeft: UIView!
    @IBOutlet weak var botLeft: UIView!
    @IBOutlet weak var mid: UIView!
    @IBOutlet weak var topRight: UIView!
    @IBOutlet weak var midRight: UIView!
    @IBOutlet weak var botRight: UIView!
    @IBOutlet weak var roll1: UILabel!
    @IBOutlet weak var roll2: UILabel!
    @IBOutlet weak var roll3: UILabel!
    @IBOutlet weak var roll4: UILabel!
    @IBOutlet weak var roll5: UILabel!
    @IBOutlet weak var roll6: UILabel!
    @IBOutlet weak var rollDiceButton: UIButton!
    var dice: [UIView] = []
    var rollCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dice = [topLeft, topRight, mid, midLeft, midRight, botLeft, botRight]
        
        hideDice(true)
        hideLabels(true)
    }
    
    @IBAction func rollButtonTouched(sender: UIButton) {
        
        hideDice(true)
        if rollCount == 6 {
            rollCount = 0
            hideLabels(true)
        }
        rollCount += 1
        
        let randomNumber = randomDiceRoll()
        
        showBlackSquares(randomNumber)
        
        switch rollCount {
        case 1:
            roll1.text = "\(randomNumber)"
            showLabel(roll1, hidden: false)
        case 2:
            roll2.text = "\(randomNumber)"
            showLabel(roll2, hidden: false)
        case 3:
            roll3.text = "\(randomNumber)"
            showLabel(roll3, hidden: false)
        case 4:
            roll4.text = "\(randomNumber)"
            showLabel(roll4, hidden: false)
        case 5:
            roll5.text = "\(randomNumber)"
            showLabel(roll5, hidden: false)
        case 6:
            roll6.text = "\(randomNumber)"
            showLabel(roll6, hidden: false)
            
        default:
            
            print("default")
//            rollCount = 0
            hideLabels(true)
//            hideDice(true)
            roll1.text = "\(randomNumber)"
            showLabel(roll1, hidden: false)
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        
        return Int(arc4random_uniform(6) + 1)
    }
    
    func showBlackSquares(roll: Int){
        
        for number in 0...roll-1 {
            
            dice[number].hidden = false
        }
    }
    
    func showLabel(label: UILabel, hidden: Bool){
        
        label.hidden = hidden
        
    }
    
    func hideLabels(hide: Bool){
        
        roll1.hidden = hide
        roll2.hidden = hide
        roll3.hidden = hide
        roll4.hidden = hide
        roll5.hidden = hide
        roll6.hidden = hide
    }
    
    func hideDice(hide: Bool){
        
        topLeft.hidden = hide
        midLeft.hidden = hide
        botLeft.hidden = hide
        mid.hidden = hide
        topRight.hidden = hide
        midRight.hidden = hide
        botRight.hidden = hide
    }
}
