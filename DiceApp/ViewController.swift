//
//  ViewController.swift
//  DiceApp
//
//  Created by Ali Almosoy on 8/27/19.
//  Copyright © 2019 Ali Almosoy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let diceArray = [ "dice1","dice2","dice3","dice4","dice5","dice6"]
    var diceIndex1: Int = 0;
    var diceIndex2:Int = 0;
    @IBOutlet weak var dice2: UIImageView!
    
    @IBOutlet weak var dice1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
        // Do any additional setup after loading the view.
    }


    @IBAction func rollButton(_ sender: UIButton) {
        updateDiceImages()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    func updateDiceImages(){
        diceIndex1 = Int.random(in: 0 ... 5)
        diceIndex2 = Int.random(in: 0 ... 5)
        dice1.image = UIImage(named: diceArray[diceIndex1])
        dice2.image = UIImage(named: diceArray[diceIndex2])
    }
}

