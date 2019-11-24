//
//  ScoreViewController.swift
//  Oscards
//
//  Created by Stefano Di Nunno on 21/11/2019.
//  Copyright © 2019 Silvio Cresci. All rights reserved.
//

import Foundation
import UIKit
class ScoreViewController : UIViewController{
    
    var arrayNames: [UILabel] = []
    var arrayScores: [UILabel] = []
    let numTeams: Int = GameSession.singleton.numberTeams
    
    override func viewDidLoad() {
        super.viewDidLoad()
         self.view.backgroundColor = UIColor(patternImage: UIImage(named: "backrules")!)
        
        roundsLabel.text = "Final Score " + String(GameSession.singleton.finalScore)
        
        arrayNames.append(teamName1)
        arrayNames.append(teamName2)
        arrayNames.append(teamName3)
        arrayNames.append(teamName4)
        
        arrayScores.append(teamScore1)
        arrayScores.append(teamScore2)
        arrayScores.append(teamScore3)
        arrayScores.append(teamScore4)
        
        if numTeams != 4 {
            
            for i in numTeams..<4{
                arrayNames[i].isHidden = true
                arrayScores[i].isHidden = true
            }
            
        }
        
        for i in 0..<numTeams {
            arrayNames[i].text = GameSession.singleton.getTeamByNumber(number: i).getNameTeam()
            arrayScores[i].text = String( GameSession.singleton.getTeamByNumber(number: i).getActualScore())
        }

    }
    override func viewWillAppear(_ animated: Bool) {
          super.viewWillAppear(animated)
          navigationController?.setNavigationBarHidden(true, animated: animated)
      }

//      override func viewWillDisappear(_ animated: Bool) {
//          super.viewWillDisappear(animated)
//          navigationController?.setNavigationBarHidden(false, animated: animated)
//      }
    
    @IBOutlet weak var roundsLabel: UILabel!
    
    @IBOutlet weak var teamName1: UILabel!
    @IBOutlet weak var teamName2: UILabel!
    @IBOutlet weak var teamName3: UILabel!
    @IBOutlet weak var teamName4: UILabel!
    
    @IBOutlet weak var teamScore1: UILabel!
    @IBOutlet weak var teamScore2: UILabel!
    @IBOutlet weak var teamScore3: UILabel!
    @IBOutlet weak var teamScore4: UILabel!
    
    @IBAction func continueButtonPressed(_ sender: UIButton) {
        
        for i in 0..<numTeams {
            if Int(arrayScores[i].text ?? "0") == GameSession.singleton.finalScore {
                // arrayNames[i] winsss!
                print(arrayNames[i].text! + " Wins!!")
            }
        }
        
        //Go in ShakeViewPage
        let newViewController: ShakeViewController = storyboard?.instantiateViewController(withIdentifier: "ShakeViewController") as! ShakeViewController
        self.navigationController?.pushViewController(newViewController, animated: true)
        
    }

}
