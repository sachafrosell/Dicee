//
//  ViewController.swift
//  Dicee
//
//  Created by Alex Frosell on 12/04/2019.
//  Copyright © 2019 Alex Frosell. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"];

    var randomDiceIndex1: Int = 0;
    var randomDiceIndex2: Int = 0;
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomDiceFace()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        randomDiceFace()
        vibratePhone()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomDiceFace()
        vibratePhone()
    }
    
    func randomDiceFace() {
        randomDiceIndex1 = Int.random(in: 0 ... 5);
        randomDiceIndex2 = Int.random(in: 0 ... 5);
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1]);
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2]);
    }
    
    func vibratePhone(){
        AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
    }

}

