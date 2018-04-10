//
//  ViewController.swift
//  Ten Dice Done
//
//  Created by Michael Malmfeldt on 3/1/18.
//  Copyright © 2018 Bad Ass Mother Fucker. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {

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
    var randomDiceIndex11 : Int = 0
    var randomDiceIndex12 : Int = 0
    var randomDiceIndex13 : Int = 0
    var randomDiceIndex14 : Int = 0
    var mission6 : Int = 6
    var currentMission = "mission6"
    
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var d1highlight: UIImageView!
    @IBOutlet weak var d2highlight: UIImageView!
    @IBOutlet weak var d3highlight: UIImageView!
    @IBOutlet weak var d4highlight: UIImageView!
    @IBOutlet weak var d5highlight: UIImageView!
    @IBOutlet weak var d6highlight: UIImageView!
    @IBOutlet weak var d7highlight: UIImageView!
    @IBOutlet weak var d8highlight: UIImageView!
    @IBOutlet weak var d9highlight: UIImageView!
    @IBOutlet weak var d10highlight: UIImageView!
    @IBOutlet weak var d11highlight: UIImageView!
    @IBOutlet weak var d12highlight: UIImageView!
    @IBOutlet weak var d13highlight: UIImageView!
    @IBOutlet weak var d14highlight: UIImageView!
    
    
    
    
    
    
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
    @IBOutlet weak var diceImageView11: UIButton!
    @IBOutlet weak var diceImageView12: UIButton!
    @IBOutlet weak var diceImageView13: UIButton!
    @IBOutlet weak var diceImageView14: UIButton!
    
    
    
    
    var dice1StatusPressed = false
    var dice2StatusPressed = false
    var dice3StatusPressed = false
    var dice4StatusPressed = false
    var dice5StatusPressed = false
    var dice6StatusPressed = false
    var dice7StatusPressed = false
    var dice8StatusPressed = false
    var dice9StatusPressed = false
    var dice10StatusPressed = false
    var dice11StatusPressed = false
    var dice12StatusPressed = false
    var dice13StatusPressed = false
    var dice14StatusPressed = false
    
    //booyah button press for rolling the dice
    
    @IBAction func goButtonPressed(_ sender: UIButton) {
        changeDiceImages()
    }
    
    

    
    // Add the actions
    


 
    func resetDice() {
        
        diceImageView1.setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        diceImageView1.setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.selected)
        diceImageView1.setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.highlighted)
        diceImageView2.setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        diceImageView3.setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        diceImageView4.setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        diceImageView5.setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        diceImageView6.setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        diceImageView7.setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        diceImageView8.setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        diceImageView9.setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        diceImageView10.setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        diceImageView11.setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        diceImageView12.setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        diceImageView13.setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        diceImageView14.setImage(#imageLiteral(resourceName: "dice1"), for: UIControlState.normal)
        
         dice1StatusPressed = false
         dice2StatusPressed = false
         dice3StatusPressed = false
         dice4StatusPressed = false
         dice5StatusPressed = false
         dice6StatusPressed = false
         dice7StatusPressed = false
         dice8StatusPressed = false
         dice9StatusPressed = false
         dice10StatusPressed = false
         dice11StatusPressed = false
         dice12StatusPressed = false
         dice13StatusPressed = false
         dice14StatusPressed = false
    }
    
    
    // this will compare current results to desired results to see when and if you win called every time dice change
    
    func didIWin(){
        if currentMission == "mission6" {
            if diceImageView1.currentImage == #imageLiteral(resourceName: "dice6") && diceImageView2.currentImage == #imageLiteral(resourceName: "dice6") && diceImageView3.currentImage == #imageLiteral(resourceName: "dice6") && diceImageView4.currentImage == #imageLiteral(resourceName: "dice6") && diceImageView5.currentImage == #imageLiteral(resourceName: "dice6") && diceImageView6.currentImage == #imageLiteral(resourceName: "dice6") && diceImageView7.currentImage == #imageLiteral(resourceName: "dice6") && diceImageView8.currentImage == #imageLiteral(resourceName: "dice6") && diceImageView9.currentImage == #imageLiteral(resourceName: "dice6") && diceImageView10.currentImage == #imageLiteral(resourceName: "dice6") && diceImageView11.currentImage == #imageLiteral(resourceName: "dice6") && diceImageView12.currentImage == #imageLiteral(resourceName: "dice6") && diceImageView13.currentImage == #imageLiteral(resourceName: "dice6") && diceImageView14.currentImage == #imageLiteral(resourceName: "dice6")   {
                let alert = UIAlertController(title: "You Win!!", message: "Click 'OK.' to Play Again.", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
                    UIAlertAction in
                            self.resetDice()
                            self.noHighlights()
                    
                }
               
                
                // Add the actions
                
                alert.addAction(okAction)

                self.present(alert, animated: true, completion: nil)
                
                
            }
            
        }
    }
    //to set initial highlight setting to off
    
    func noHighlights(){
        d1highlight.isHidden = true
        d2highlight.isHidden = true
        d3highlight.isHidden = true
        d4highlight.isHidden = true
        d5highlight.isHidden = true
        d6highlight.isHidden = true
        d7highlight.isHidden = true
        d8highlight.isHidden = true
        d9highlight.isHidden = true
        d10highlight.isHidden = true
        d11highlight.isHidden = true
       d12highlight.isHidden = true
        d13highlight.isHidden = true
        d14highlight.isHidden = true
        
        
        
    }
    
    //this is the actual changing of the dice when rolling
    
    
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
        randomDiceIndex11 = Int(arc4random_uniform(6))
        randomDiceIndex12 = Int(arc4random_uniform(6))
        randomDiceIndex13 = Int(arc4random_uniform(6))
        randomDiceIndex14 = Int(arc4random_uniform(6))
        
      
        // violating the first rule of coding DRY but more focused on functionality than form right now
        
        
        
        if dice1StatusPressed == false {
           diceImageView1.setImage(UIImage(named: diceArray[randomDiceIndex1]), for: UIControlState.normal)
            diceImageView1.setImage(UIImage(named: diceArray[randomDiceIndex1]), for: UIControlState.highlighted)
            diceImageView1.setImage(UIImage(named: diceArray[randomDiceIndex1]), for: UIControlState.selected)
            
        }
       
        if dice2StatusPressed == false {
            diceImageView2.setImage(UIImage(named: diceArray[randomDiceIndex2]), for: UIControlState.normal)
//            diceImageView2.setImage(UIImage(named: diceArray[randomDiceIndex2]), for: UIControlState.highlighted)
//            diceImageView2.setImage(UIImage(named: diceArray[randomDiceIndex2]), for: UIControlState.selected)
            
        }

        if dice3StatusPressed == false {
//            diceImageView3.setImage(UIImage(named: diceArray[randomDiceIndex3]), for: UIControlState.highlighted)
            diceImageView3.setImage(UIImage(named: diceArray[randomDiceIndex3]), for: UIControlState.normal)
//            diceImageView3.setImage(UIImage(named: diceArray[randomDiceIndex3]), for: UIControlState.selected)
            
        }
        
        if dice4StatusPressed == false {
//            diceImageView4.setImage(UIImage(named: diceArray[randomDiceIndex4]), for: UIControlState.selected)
//            diceImageView4.setImage(UIImage(named: diceArray[randomDiceIndex4]), for: UIControlState.highlighted)
            diceImageView4.setImage(UIImage(named: diceArray[randomDiceIndex4]), for: UIControlState.normal)}
        
        if dice5StatusPressed == false {
//            diceImageView5.setImage(UIImage(named: diceArray[randomDiceIndex5]), for: UIControlState.highlighted)
//            diceImageView5.setImage(UIImage(named: diceArray[randomDiceIndex5]), for: UIControlState.selected)
            diceImageView5.setImage(UIImage(named: diceArray[randomDiceIndex5]), for: UIControlState.normal)}
        
        if dice6StatusPressed == false {
            diceImageView6.setImage(UIImage(named: diceArray[randomDiceIndex6]), for: UIControlState.normal)
//            diceImageView6.setImage(UIImage(named: diceArray[randomDiceIndex6]), for: UIControlState.selected)
//            diceImageView6.setImage(UIImage(named: diceArray[randomDiceIndex6]), for: UIControlState.highlighted)
            
        }
        
        if dice7StatusPressed == false {
            diceImageView7.setImage(UIImage(named: diceArray[randomDiceIndex7]), for: UIControlState.highlighted)
            diceImageView7.setImage(UIImage(named: diceArray[randomDiceIndex7]), for: UIControlState.selected)
            diceImageView7.setImage(UIImage(named: diceArray[randomDiceIndex7]), for: UIControlState.normal)}
        
        if dice8StatusPressed == false {
            diceImageView8.setImage(UIImage(named: diceArray[randomDiceIndex8]), for: UIControlState.highlighted)
            diceImageView8.setImage(UIImage(named: diceArray[randomDiceIndex8]), for: UIControlState.selected)
            diceImageView8.setImage(UIImage(named: diceArray[randomDiceIndex8]), for: UIControlState.normal)}
        
        if dice9StatusPressed == false {
            diceImageView9.setImage(UIImage(named: diceArray[randomDiceIndex9]), for: UIControlState.selected)
            diceImageView9.setImage(UIImage(named: diceArray[randomDiceIndex9]), for: UIControlState.highlighted)
            diceImageView9.setImage(UIImage(named: diceArray[randomDiceIndex9]), for: UIControlState.normal)}
        
        if dice10StatusPressed == false {
            diceImageView10.setImage(UIImage(named: diceArray[randomDiceIndex10]), for: UIControlState.selected)
            diceImageView10.setImage(UIImage(named: diceArray[randomDiceIndex10]), for: UIControlState.highlighted)
            diceImageView10.setImage(UIImage(named: diceArray[randomDiceIndex10]), for: UIControlState.normal)}
        
        if dice11StatusPressed == false {
            diceImageView11.setImage(UIImage(named: diceArray[randomDiceIndex11]), for: UIControlState.selected)
            diceImageView11.setImage(UIImage(named: diceArray[randomDiceIndex11]), for: UIControlState.highlighted)
            diceImageView11.setImage(UIImage(named: diceArray[randomDiceIndex11]), for: UIControlState.normal)}
        
        if dice12StatusPressed == false {
            diceImageView12.setImage(UIImage(named: diceArray[randomDiceIndex12]), for: UIControlState.selected)
            diceImageView12.setImage(UIImage(named: diceArray[randomDiceIndex12]), for: UIControlState.highlighted)
            diceImageView12.setImage(UIImage(named: diceArray[randomDiceIndex12]), for: UIControlState.normal)}
        
        if dice13StatusPressed == false {
            diceImageView13.setImage(UIImage(named: diceArray[randomDiceIndex13]), for: UIControlState.selected)
            diceImageView13.setImage(UIImage(named: diceArray[randomDiceIndex13]), for: UIControlState.highlighted)
            diceImageView13.setImage(UIImage(named: diceArray[randomDiceIndex13]), for: UIControlState.normal)}
        
        if dice14StatusPressed == false {
            diceImageView14.setImage(UIImage(named: diceArray[randomDiceIndex14]), for: UIControlState.selected)
            diceImageView14.setImage(UIImage(named: diceArray[randomDiceIndex14]), for: UIControlState.highlighted)
            diceImageView14.setImage(UIImage(named: diceArray[randomDiceIndex14]), for: UIControlState.normal)}
        
        didIWin()
        
        
    }
    
    
    
    // button interactions pushing dice button to get to lock or unlock
    
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
       if sender.tag == 1
       {
        dice1StatusPressed = !dice1StatusPressed
        if dice1StatusPressed == true {
            d1highlight.isHidden = false
        }
        else if dice1StatusPressed ==  false {
            d1highlight.isHidden = true
        }
        }
        
        if sender.tag == 2
        {
            dice2StatusPressed = !dice2StatusPressed
            if dice2StatusPressed == true {
                d2highlight.isHidden = false
            }
            else if dice2StatusPressed ==  false {
                d2highlight.isHidden = true
            }
        }
        if sender.tag == 3
        {
            dice3StatusPressed = !dice3StatusPressed
            if dice3StatusPressed == true {
                d3highlight.isHidden = false
            }
            else if dice3StatusPressed ==  false {
                d3highlight.isHidden = true
            }
        }
        if sender.tag == 4
        {
            dice4StatusPressed = !dice4StatusPressed
            if dice4StatusPressed == true {
                d4highlight.isHidden = false
            }
            else if dice4StatusPressed ==  false {
                d4highlight.isHidden = true
            }
        }
        if sender.tag == 5
        {
            dice5StatusPressed = !dice5StatusPressed
            if dice5StatusPressed == true {
                d5highlight.isHidden = false
            }
            else if dice5StatusPressed ==  false {
                d5highlight.isHidden = true
            }
        }
        if sender.tag == 6
        {
            dice6StatusPressed = !dice6StatusPressed
            if dice6StatusPressed == true {
                d6highlight.isHidden = false
            }
            else if dice6StatusPressed ==  false {
                d6highlight.isHidden = true
            }
        }
        if sender.tag == 7
        {
            dice7StatusPressed = !dice7StatusPressed
            if dice7StatusPressed == true {
                d7highlight.isHidden = false
            }
            else if dice7StatusPressed ==  false {
                d7highlight.isHidden = true
            }
        }
        if sender.tag == 8
        {
            dice8StatusPressed = !dice8StatusPressed
            if dice8StatusPressed == true {
                d8highlight.isHidden = false
            }
            else if dice8StatusPressed ==  false {
                d8highlight.isHidden = true
            }
        }
        if sender.tag == 9
        {
            dice9StatusPressed = !dice9StatusPressed
            if dice9StatusPressed == true {
                d9highlight.isHidden = false
            }
            else if dice9StatusPressed ==  false {
                d9highlight.isHidden = true
            }
        }
        if sender.tag == 10
        {
            dice10StatusPressed = !dice10StatusPressed
            if dice10StatusPressed == true {
                d10highlight.isHidden = false
            }
            else if dice10StatusPressed ==  false {
                d10highlight.isHidden = true
            }
        }
        if sender.tag == 11
        {
            dice11StatusPressed = !dice11StatusPressed
            if dice11StatusPressed == true {
                d11highlight.isHidden = false
            }
            else if dice11StatusPressed ==  false {
                d11highlight.isHidden = true
            }
        }
        if sender.tag == 12
        {
            dice12StatusPressed = !dice12StatusPressed
            if dice12StatusPressed == true {
                d12highlight.isHidden = false
            }
            else if dice12StatusPressed ==  false {
                d12highlight.isHidden = true
            }
        }
        if sender.tag == 13
        {
            dice13StatusPressed = !dice13StatusPressed
            if dice13StatusPressed == true {
                d13highlight.isHidden = false
            }
            else if dice13StatusPressed ==  false {
                d13highlight.isHidden = true
            }
        }
        if sender.tag == 14
        {
            dice14StatusPressed = !dice14StatusPressed
            if dice14StatusPressed == true {
                d14highlight.isHidden = false
            }
            else if dice14StatusPressed ==  false {
                d14highlight.isHidden = true
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        noHighlights()
        resetDice()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeDiceImages()
    }


   
    
}

