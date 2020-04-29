//
//  ViewController.swift
//  WarCardGame
//
//  Created by Heritiana RASOANAIVO on 27/04/2020.
//  Copyright © 2020 Heritiana RASOANAIVO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0;
    
    var rightScore = 0;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        // Randomize some numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        // Update the image views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        // Compare the random numbers
        updateScore(nb1: leftNumber, nb2: rightNumber)
    }
    
    func updateScore(nb1:Int, nb2:Int){
    
        if nb1 > nb2 {
            
            // Left side wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }else if nb1 < nb2 {
            
            // Right side wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
    }

}

