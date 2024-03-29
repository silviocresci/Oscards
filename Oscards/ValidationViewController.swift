//
//  ValidationViewController.swift
//  Oscards
//
//  Created by Silvio Cresci on 19/11/2019.
//  Copyright © 2019 Silvio Cresci. All rights reserved.
//

import UIKit
class ValidationViewController : UIViewController{
    var solution : String!
    var img1 : UIImageView!
    var img2 : UIImageView!
    var img3 : UIImageView!
    var img4 : UIImageView!


//    @IBOutlet weak var teamLabel: UILabel!
    @IBOutlet weak var view1: UIImageView!
    @IBOutlet weak var view2: UIImageView!
    @IBOutlet weak var view3: UIImageView!
    @IBOutlet weak var view4: UIImageView!
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var text: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let actualTeam: Team = GameSession.singleton.getTeamByNumber(number: GameSession.singleton.actualTurn)
//        teamLabel.text = actualTeam.nameTeam + " wrote"
        
        if(actualTeam.nameTeam == "Marilyn Team"){
                   img.image = UIImage(named: "marylin")
               }else if(actualTeam.nameTeam == "Chaplin Team"){
                   img.image = UIImage(named: "charlie")
               }else if(actualTeam.nameTeam == "Heisenberg Team"){
                   img.image = UIImage(named: "heise")
               }else if(actualTeam.nameTeam == "Kaonashi Team"){
                   img.image = UIImage(named: "kaonashi")
               }
        
        nav.setHidesBackButton(true, animated: true)
        view1.image = img1.image
        view2.image = img2.image
        view3.image = img3.image
        view4.image = img4.image
        text.text = solution
        
        }
    override func viewWillAppear(_ animated: Bool) {
          super.viewWillAppear(animated)
          navigationController?.setNavigationBarHidden(true, animated: animated)
      }

//      override func viewWillDisappear(_ animated: Bool) {
//          super.viewWillDisappear(animated)
//          navigationController?.setNavigationBarHidden(false, animated: animated)
//      }
    
    @IBOutlet weak var nav: UINavigationItem!
    
    //Title inserted not valid for the other teams. The actual team doesn't get points
    @IBAction func notValidButtonPressed(_ sender: Any) {
        showScoresPage()
    }
    
    //Title inserted is valid for all the teams. The actual team get points
    @IBAction func validButtonPressed(_ sender: Any) {
        
//        let title = self.value(forKey: "title")
//        let validationPageController = ValidationPageController.init()
//        validationPageController.validButtonPressed(titleInserted: title as! String)

        let validationPageController = ValidationPageController.init()
//        let title = self.value(forKey: "title")
        validationPageController.validButtonPressed(titleInserted: solution)
        
        showScoresPage()
        
    }
    
    //This function show the ScoresPage
    func showScoresPage() {
        let newViewController: ScoreViewController = storyboard?.instantiateViewController(withIdentifier: "ScoreViewController") as! ScoreViewController
        self.navigationController?.pushViewController(newViewController, animated: true)
    }
    
}
