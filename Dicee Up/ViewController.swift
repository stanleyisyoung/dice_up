//
//  ViewController.swift
//  Dicee Up
//
//  Created by Stanley Young on 6/17/18.
//  Copyright © 2018 Stanley Young. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
        // Do any additional setup after loading the view, typically from a nib.
        // this f(x) runs on load
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        // rand unif gens randoms from  0->(n-1)
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        // Method 2: Use arr of named 'dice__'
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
        // print("Dice1: " + String(randomDiceIndex1) + " Dice2: " + String(randomDiceIndex2))
        // Method 1: String Concat
        //        diceImageView1.image = UIImage(named: "dice" + String(randomDiceIndex1))
        //        diceImageView2.image = UIImage(named: "dice" + String(randomDiceIndex2))
        
    }
    
}

