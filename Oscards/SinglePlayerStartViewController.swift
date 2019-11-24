//
//  singlePlayerShakeViewController.swift
//  Oscards
//
//  Created by Gianna Stylianou on 21/11/19.
//  Copyright © 2019 Silvio Cresci. All rights reserved.
//

import UIKit

class SinglePlayerStartViewController: UIViewController {

    @IBOutlet weak var roundSegmentedControl: UISegmentedControl!
    @IBOutlet weak var startGameButton: UIButton!
    
    var rounds : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        userScore = 0
        actualRound = 1
        indexArray = 0
        for i in 0..<movieArray.count {
            randomArrayIndex[i] = Int.random(in: 0..<movieArray.count)
        }
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        performSegue(withIdentifier: "Start Single Game", sender: self)
    }
    
    
    @IBAction func selectRounds(_ sender: Any) {
        switch roundSegmentedControl.selectedSegmentIndex
                {
                case 0:
                    rounds = 10
                    numRounds = rounds
                case 1:
                    rounds = 15
                    numRounds = rounds
                case 2:
                    rounds = 20
                    numRounds = rounds
                default:
                    break
                }
    }

    // MARK: - Navigation

    // send the rounds selected to the main game

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destinationVC = segue.destination as! SinglePlayerViewController
            destinationVC.numberOfRounds = numRounds
    }
}

        
        
        
