//
//  ViewController.swift
//  dicee
//
//  Created by Bingjie Zhang on 3/20/18.
//  Copyright © 2018 Bingjie Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageView1.image = rollDice()
        diceImageView2.image = rollDice()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rolButtonPressed(_ sender: UIButton) {
   
        diceImageView1.image = rollDice()
        diceImageView2.image = rollDice()
    }
    
    func rollDice() -> UIImage{
        var randomDiceIndex1 = Int(arc4random_uniform(6))
        return UIImage(named: "dice\(randomDiceIndex1+1)")!
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        diceImageView1.image = rollDice()
        diceImageView2.image = rollDice()
    }
    
}

