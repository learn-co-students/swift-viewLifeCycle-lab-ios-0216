//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var box1: UIView!
    @IBOutlet weak var box2: UIView!
    @IBOutlet weak var box3: UIView!
    @IBOutlet weak var box4: UIView!
    @IBOutlet weak var box5: UIView!
    @IBOutlet weak var box6: UIView!
    @IBOutlet weak var box7: UIView!
    
    @IBOutlet weak var cb1: UILabel!
    @IBOutlet weak var cb2: UILabel!
    @IBOutlet weak var cb3: UILabel!
    @IBOutlet weak var cb4: UILabel!
    @IBOutlet weak var cb5: UILabel!
    @IBOutlet weak var cb6: UILabel!
    var rollCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    makeBoxHidden(true)
    makeCBHiddenEmpty(true)
        
    }
    
    @IBAction func diceButton(sender: AnyObject) {
        
        rollCount = rollCount + 1
        print("\(rollCount)")
        
        var dieValue = randomDiceRoll()
        print("\(dieValue)")
        
        
        showBlackBoxes(dieValue)
        switch rollCount {
        case 1:
            showNumberAndBox(cb1, number: dieValue)
        case 2:
            showNumberAndBox(cb2, number: dieValue)
        case 3:
            showNumberAndBox(cb3, number: dieValue)
        case 4:
            showNumberAndBox(cb4, number: dieValue)
        case 5:
            showNumberAndBox(cb5, number: dieValue)
        case 6:
            showNumberAndBox(cb6, number: dieValue)

        default:
            rollCount = 0
            makeCBHiddenEmpty(true)
            makeBoxHidden(true)
        }
        
    }
    
    func showNumberAndBox(label: UILabel, number : Int) {
        label.hidden = false
        label.text = "\(number)"
    }
    
    func makeBoxHidden(bool: Bool) {
        box1.hidden = bool
        box2.hidden = bool
        box3.hidden = bool
        box4.hidden = bool
        box5.hidden = bool
        box6.hidden = bool
        box7.hidden = bool
    }
    
    func makeCBHiddenEmpty(bool: Bool) {
        cb1.text = ""
        cb1.hidden = bool
        cb2.text = ""
        cb2.hidden = bool
        cb3.text = ""
        cb3.hidden = bool
        cb4.text = ""
        cb4.hidden = bool
        cb5.text = ""
        cb5.hidden = bool
        cb6.text = ""
        cb6.hidden = bool

    }
    
    func showBlackBoxes(number:Int) {
        
        makeBoxHidden(true)
        
        switch number {
        case 1:
            box1.hidden = false
        case 2:
            box1.hidden = false
            box7.hidden = false
        case 3:
            box1.hidden = false
            box4.hidden = false
            box7.hidden = false
        case 4:
            box1.hidden = false
            box3.hidden = false
            box5.hidden = false
            box7.hidden = false
        case 5:
            box1.hidden = false
            box3.hidden = false
            box4.hidden = false
            box5.hidden = false
            box7.hidden = false
        case 6:
            box1.hidden = false
            box2.hidden = false
            box3.hidden = false
            box5.hidden = false
            box6.hidden = false
            box7.hidden = false
        case 7:
            box1.hidden = false
            box2.hidden = false
            box3.hidden = false
            box4.hidden = false
            box5.hidden = false
            box6.hidden = false
            box7.hidden = false
        default:
            print("number can only be from 1-6")
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    
}

    