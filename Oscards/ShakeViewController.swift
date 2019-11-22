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
        //Every time here, define the next team turn
        let actualTeamNumber: Int = GameSession.singleton.getNextTeamTurn()
        let actualTeam: Team = GameSession.singleton.getTeamByNumber(number: actualTeamNumber)
        shakeTeamLabel.text = actualTeam.nameTeam
        
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
    
    @IBOutlet weak var shakeTeamLabel: UILabel!
    @IBOutlet weak var shakeButton: UIButton!
}
