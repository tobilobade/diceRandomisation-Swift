//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //connection for the first and second Dice images ui element
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var leftDiceNumber = 0
    var rightDiceNumber = 0
    let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     
        
    }
    
    @IBAction func diceRollPressed(_ sender: UIButton) {
        leftDiceNumber =  Int.random(in: 0..<6)
        rightDiceNumber =  Int.random(in: 0..<6)
        diceImageView1.image=diceArray[leftDiceNumber]
        diceImageView2.image=diceArray[rightDiceNumber]
        
    }
    
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        
        diceImageView1.image = #imageLiteral(resourceName: "DiceOne")
        diceImageView2.image = #imageLiteral(resourceName: "DiceOne")
        
        
    }
    
}
