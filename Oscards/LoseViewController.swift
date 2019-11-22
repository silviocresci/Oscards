//
//  LoseViewController.swift
//  Oscards
//
//  Created by Silvio Cresci on 19/11/2019.
//  Copyright © 2019 Silvio Cresci. All rights reserved.
//

import UIKit
class LoseViewController : UIViewController{
    @IBOutlet weak var teamLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let actualTeam: Team = GameSession.singleton.getTeamByNumber(number: GameSession.singleton.actualTurn)
        teamLabel.text = actualTeam.nameTeam + " wrote different or already used titles."
        
    }
    
    @IBAction func scoresButtonPressed(_ sender: Any) {
        let newViewController: ScoreViewController = storyboard?.instantiateViewController(withIdentifier: "ScoreViewController") as! ScoreViewController
        self.navigationController?.pushViewController(newViewController, animated: true)
    }
}
