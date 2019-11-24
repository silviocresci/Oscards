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
    @IBOutlet weak var newScore: UITextField!
    @IBOutlet weak var firstScore: UITextField!
    @IBOutlet weak var secondScore: UITextField!
    @IBOutlet weak var thirdScore: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newScore.text = "\(userScore) 👏"
    }
    

   override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
       performSegue(withIdentifier: "Play Again", sender: self)
   }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
