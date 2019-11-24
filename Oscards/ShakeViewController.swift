//
//  ShakeViewController.swift
//  Oscards
//
//  Created by Silvio Cresci on 19/11/2019.
//  Copyright © 2019 Silvio Cresci. All rights reserved.
//

import UIKit
class ShakeViewController : UIViewController{

    override func viewDidLoad() {
    
        super.viewDidLoad()
         self.view.backgroundColor = UIColor(patternImage: UIImage(named: "shakeback")!)
        //Every time here, define the next team turn
        let actualTeamNumber: Int = GameSession.singleton.getNextTeamTurn()
        let actualTeam: Team = GameSession.singleton.getTeamByNumber(number: actualTeamNumber)
        if(actualTeam.nameTeam == "Marilyn Team"){
            img.image = UIImage(named: "marylin")
        }else if(actualTeam.nameTeam == "Chaplin Team"){
            img.image = UIImage(named: "charlie")
        }else if(actualTeam.nameTeam == "Heisenberg Team"){
            img.image = UIImage(named: "heise")
        }else if(actualTeam.nameTeam == "Kaonashi Team"){
            img.image = UIImage(named: "kaonashi")
        }
//        shakeTeamLabel.text = actualTeam.nameTeam
               
        
    }
    override func viewWillAppear(_ animated: Bool) {
          super.viewWillAppear(animated)
          navigationController?.setNavigationBarHidden(true, animated: animated)
      }

//      override func viewWillDisappear(_ animated: Bool) {
//          super.viewWillDisappear(animated)
//          navigationController?.setNavigationBarHidden(false, animated: animated)
//      }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        performSegue(withIdentifier: "ViewController", sender: self)
    }
    
    @IBOutlet weak var img: UIImageView!
//    @IBOutlet weak var shakeTeamLabel: UILabel!
    @IBOutlet weak var shakeButton: UIButton!
}
