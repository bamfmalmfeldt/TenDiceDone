//
//  ViewController.swift
//  Ten Dice Done
//
//  Created by Michael Malmfeldt on 3/1/18.
//  Copyright © 2018 Bad Ass Mother Fucker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    var randomDiceIndex3 : Int = 0
    var randomDiceIndex4 : Int = 0
    var randomDiceIndex5 : Int = 0
    var randomDiceIndex6 : Int = 0
    var randomDiceIndex7 : Int = 0
    var randomDiceIndex8 : Int = 0
    var randomDiceIndex9 : Int = 0
    var randomDiceIndex10 : Int = 0
    
    
    
 
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
   
    @IBOutlet weak var diceImageView1: UIButton!
    @IBOutlet weak var diceImageView2: UIButton!
    @IBOutlet weak var diceImageView3: UIButton!
    @IBOutlet weak var diceImageView4: UIButton!
    @IBOutlet weak var diceImageView5: UIButton!
    @IBOutlet weak var diceImageView6: UIButton!
    @IBOutlet weak var diceImageView7: UIButton!
    @IBOutlet weak var diceImageView8: UIButton!
    @IBOutlet weak var diceImageView9: UIButton!
    @IBOutlet weak var diceImageView10: UIButton!
    
    
    var dice1StatusPressed = true
    var dice2StatusPressed = true
    var dice3StatusPressed = true
    var dice4StatusPressed = true
    var dice5StatusPressed = true
    var dice6StatusPressed = true
    var dice7StatusPressed = true
    var dice8StatusPressed = true
    var dice9StatusPressed = true
    var dice10StatusPressed = true
    
    @IBAction func goButtonPressed(_ sender: UIButton) {
        changeDiceImages()
    }
    
    func changeDiceImages(){
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        randomDiceIndex3 = Int(arc4random_uniform(6))
        randomDiceIndex4 = Int(arc4random_uniform(6))
        randomDiceIndex5 = Int(arc4random_uniform(6))
        randomDiceIndex6 = Int(arc4random_uniform(6))
        randomDiceIndex7 = Int(arc4random_uniform(6))
        randomDiceIndex8 = Int(arc4random_uniform(6))
        randomDiceIndex9 = Int(arc4random_uniform(6))
        randomDiceIndex10 = Int(arc4random_uniform(6))
      
        if dice1StatusPressed == true {
            diceImageView1.setImage(UIImage(named: diceArray[randomDiceIndex1]), for: UIControlState.normal)
            diceImageView1.setImage(UIImage(named: diceArray[randomDiceIndex1]), for: UIControlState.highlighted)
            diceImageView1.setImage(UIImage(named: diceArray[randomDiceIndex1]), for: UIControlState.selected)}
        if dice2StatusPressed == true {
            diceImageView2.setImage(UIImage(named: diceArray[randomDiceIndex2]), for: UIControlState.normal)
            diceImageView2.setImage(UIImage(named: diceArray[randomDiceIndex2]), for: UIControlState.highlighted)
            diceImageView2.setImage(UIImage(named: diceArray[randomDiceIndex2]), for: UIControlState.selected)}
        if dice3StatusPressed == true {
            diceImageView3.setImage(UIImage(named: diceArray[randomDiceIndex3]), for: UIControlState.highlighted)
            diceImageView3.setImage(UIImage(named: diceArray[randomDiceIndex3]), for: UIControlState.normal)
            diceImageView3.setImage(UIImage(named: diceArray[randomDiceIndex3]), for: UIControlState.selected)}
        if dice4StatusPressed == true {
            diceImageView4.setImage(UIImage(named: diceArray[randomDiceIndex4]), for: UIControlState.selected)
            diceImageView4.setImage(UIImage(named: diceArray[randomDiceIndex4]), for: UIControlState.highlighted)
            diceImageView4.setImage(UIImage(named: diceArray[randomDiceIndex4]), for: UIControlState.normal)}
        if dice5StatusPressed == true {
            diceImageView5.setImage(UIImage(named: diceArray[randomDiceIndex5]), for: UIControlState.highlighted)
            diceImageView5.setImage(UIImage(named: diceArray[randomDiceIndex5]), for: UIControlState.selected)
            diceImageView5.setImage(UIImage(named: diceArray[randomDiceIndex5]), for: UIControlState.normal)}
        if dice6StatusPressed == true {
            diceImageView6.setImage(UIImage(named: diceArray[randomDiceIndex6]), for: UIControlState.normal)
            diceImageView6.setImage(UIImage(named: diceArray[randomDiceIndex6]), for: UIControlState.selected)
            diceImageView6.setImage(UIImage(named: diceArray[randomDiceIndex6]), for: UIControlState.highlighted)}
        if dice7StatusPressed == true {
            diceImageView7.setImage(UIImage(named: diceArray[randomDiceIndex7]), for: UIControlState.highlighted)
            diceImageView7.setImage(UIImage(named: diceArray[randomDiceIndex7]), for: UIControlState.selected)
            diceImageView7.setImage(UIImage(named: diceArray[randomDiceIndex7]), for: UIControlState.normal)}
        if dice8StatusPressed == true {
            diceImageView8.setImage(UIImage(named: diceArray[randomDiceIndex8]), for: UIControlState.highlighted)
            diceImageView8.setImage(UIImage(named: diceArray[randomDiceIndex8]), for: UIControlState.selected)
            diceImageView8.setImage(UIImage(named: diceArray[randomDiceIndex8]), for: UIControlState.normal)}
        if dice9StatusPressed == true {
            diceImageView9.setImage(UIImage(named: diceArray[randomDiceIndex9]), for: UIControlState.selected)
            diceImageView9.setImage(UIImage(named: diceArray[randomDiceIndex9]), for: UIControlState.highlighted)
            diceImageView9.setImage(UIImage(named: diceArray[randomDiceIndex9]), for: UIControlState.normal)}
        if dice10StatusPressed == true {
            diceImageView10.setImage(UIImage(named: diceArray[randomDiceIndex10]), for: UIControlState.selected)
            diceImageView10.setImage(UIImage(named: diceArray[randomDiceIndex10]), for: UIControlState.highlighted)
            diceImageView10.setImage(UIImage(named: diceArray[randomDiceIndex10]), for: UIControlState.normal)}
        
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
       if sender.tag == 1
       {
        dice1StatusPressed = !dice1StatusPressed
        print(dice1StatusPressed)
       print("hello")
        
        }
        if sender.tag == 2
        {
            dice2StatusPressed = !dice2StatusPressed
        }
        if sender.tag == 3
        {
            dice3StatusPressed = !dice3StatusPressed
        }
        if sender.tag == 4
        {
            dice4StatusPressed = !dice4StatusPressed
        }
        if sender.tag == 5
        {
            dice5StatusPressed = !dice5StatusPressed
        }
        if sender.tag == 6
        {
            dice6StatusPressed = !dice6StatusPressed
        }
        if sender.tag == 7
        {
            dice7StatusPressed = !dice7StatusPressed
        }
        if sender.tag == 8
        {
            dice8StatusPressed = !dice8StatusPressed
        }
        if sender.tag == 9
        {
            dice9StatusPressed = !dice9StatusPressed
        }
        if sender.tag == 10
        {
            dice10StatusPressed = !dice10StatusPressed
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


   
    
}

