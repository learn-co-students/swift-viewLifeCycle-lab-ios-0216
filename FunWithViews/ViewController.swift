//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // black dice squares
    @IBOutlet weak var diceOne: UIView!
    @IBOutlet weak var diceTwo: UIView!
    @IBOutlet weak var diceThree: UIView!
    @IBOutlet weak var diceFour: UIView!
    @IBOutlet weak var diceFive: UIView!
    @IBOutlet weak var diceSix: UIView!
    @IBOutlet weak var diceSeven: UIView!
    
    // colorful labels
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    @IBAction func buttonTapped(_ sender: AnyObject) {
       
        rearangeDie()
        
        
        
    }
    
    // this method re aragnes the dice.
    func rearangeDie(){
        
        
        switch randomDiceRoll() {
        case 1:
            diceOne.isHidden = true
            diceTwo.isHidden = true
            diceThree.isHidden = true
            diceFour.isHidden = false
            diceFive.isHidden = true
            diceSix.isHidden = true
            diceSeven.isHidden = true
            print("case 1 was done")
        case 2:
            diceOne.isHidden = false
            diceTwo.isHidden = true
            diceThree.isHidden = true
            diceFour.isHidden = true
            diceFive.isHidden = true
            diceSix.isHidden = true
            diceSeven.isHidden = false
            print("case 2 was done")
        case 3:
            diceOne.isHidden = false
            diceTwo.isHidden = true
            diceThree.isHidden = true
            diceFour.isHidden = false
            diceFive.isHidden = true
            diceSix.isHidden = true
            diceSeven.isHidden = false
            print("case 3 was done")

        case 4:
            diceOne.isHidden = false
            diceTwo.isHidden = true
            diceThree.isHidden = false
            diceFour.isHidden = true
            diceFive.isHidden = false
            diceSix.isHidden = true
            diceSeven.isHidden = false
            print("case 4 was done")

        case 5:
            diceOne.isHidden = false
            diceTwo.isHidden = true
            diceThree.isHidden = false
            diceFour.isHidden = false
            diceFive.isHidden = false
            diceSix.isHidden = true
            diceSeven.isHidden = false
            print("case 5 was done")

        case 6:
            diceOne.isHidden = false
            diceTwo.isHidden = false
            diceThree.isHidden = false
            diceFour.isHidden = true
            diceFive.isHidden = false
            diceSix.isHidden = false
            diceSeven.isHidden = false
            print("case 6 was done")

        default:
            diceOne.isHidden = true
            diceTwo.isHidden = true
            diceThree.isHidden = true
            diceFour.isHidden = true
            diceFive.isHidden = true
            diceSix.isHidden = true
            diceSeven.isHidden = true
            print("case default was done")

        }
        
    }
    
    // this method updates the score label. 
    func updateScore(){
        
        if labelOne.isHidden == true{
            labelOne.isHidden = false
            labelOne.text = "\(randomDiceRoll())"
            
        }

    }
    
    
    

}
