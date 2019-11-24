//
//  SinglePlayerScoreViewController.swift
//  Oscards
//
//  Created by Gianna Stylianou on 21/11/19.
//  Copyright © 2019 Silvio Cresci. All rights reserved.
//

import UIKit

class SinglePlayerScoreViewController: UIViewController {

    @IBOutlet weak var newGameButton: UIButton!
    @IBOutlet weak var newScore: UILabel!
    @IBOutlet weak var firstScore: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        newScore.text = "\(userScore) 👏"
        ShowHighScore()
    }
    
    func ShowHighScore() {
           if (userScore > highScore) {
                   highScore = userScore;
                   UserDefaults.standard.integer(forKey: "High Score Saved")
               }
        firstScore.text = String(highScore)
        
    }
    

   override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
       performSegue(withIdentifier: "Play Again", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}
