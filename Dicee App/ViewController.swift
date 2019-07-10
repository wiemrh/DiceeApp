//
//  ViewController.swift
//  Dicee App
//
//  Created by +	wiem rebah  on 09/07/2019.
//  Copyright © 2019 +	wiem rebah . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //variables
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    var diceArray =  ["dice1" , "dice2" , "dice3" , "dice4" , "dice5" , "dice6"]
    
    //IBOutlet
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageiew2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateDiceImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //this will get executed when the roll button  gets pressed .
    updateDiceImages()
    }
   
    //exc when it detect a shake motion on the phone and when it ended
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        print(randomDiceIndex1 )
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1] )
        diceImageiew2.image = UIImage(named: diceArray[randomDiceIndex2] )
    }
    
}

