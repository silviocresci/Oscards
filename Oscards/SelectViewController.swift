//
//  SelectViewController.swift
//  Oscards
//
//  Created by Silvio Cresci on 19/11/2019.
//  Copyright © 2019 Silvio Cresci. All rights reserved.
//

import UIKit
class SelectViewController : UIViewController{

@IBOutlet weak var selectButton: UIButton!
@IBOutlet var nums: [UIButton]!
@IBOutlet weak var playButton: UIButton!

    var n : CGFloat = 0                 //Number of team selected
    var check : CGFloat = 0             //Number of team checked
    var teamNamesArray: [String] = []   //Array with the team's names of the current Session of Game

override func viewDidLoad() {

    super.viewDidLoad()
    enableButton()
}
@IBAction func handleSelection(_ sender: UIButton) {
    nums.forEach { (button) in
        UIView.animate(withDuration: 0.3, animations: {
            button.isHidden = !button.isHidden
            self.view.layoutIfNeeded()
        })
    }
}

enum num : String {
    case n2 = "2"
    case n3 = "3"
    case n4 = "4"
}

@IBAction func numIsTapped(_ sender: UIButton) {
    guard let title = sender.currentTitle, let n = num(rawValue: title) else {
        return
    }
    nums.forEach { (button) in
               UIView.animate(withDuration: 0.3, animations: {
                   button.isHidden = !button.isHidden
                   self.view.layoutIfNeeded()
               })
           }
    woodyTeamCheck.isHidden = false
    spielbergTeamCheck.isHidden = false
    scorseseTeamCheck.isHidden = false
    tarantinoTeamCheck.isHidden = false
    woodyTeamPic.isHidden = false
    spielbergTeamPic.isHidden = false
    scorseseTeamPic.isHidden = false
    tarantinoTeamPic.isHidden = false
    
    if (n == .n2 ){
        selectButton.setTitle("2", for: .normal)
        self.n = 2
        enableButton()
    } else if(n == .n3){
        selectButton.setTitle("3", for: .normal)
        self.n = 3
        enableButton()
    } else {
        selectButton.setTitle("4", for: .normal)
        self.n = 4
        enableButton()
    }
}
func enableButton(){
    
    if (n != check || check == 0){
        playButton.isEnabled = false
        playButton.layer.opacity = 0.5
          }else{
        playButton.isEnabled = true
        playButton.layer.opacity = 1

          }
}

@IBAction func checkBoxTapped(_ sender: UIButton) {
    if sender.isSelected {
        sender.isSelected = false
        check -= 1
        enableButton()
    } else{
        if(check < n){
            sender.isSelected = true
            check += 1
            enableButton()
        }
        
    }
}
    
    @IBAction func playButtonPressed(_ sender: UIButton) {
        
        //Creating names array
        if woodyTeamCheck.isSelected {
            self.teamNamesArray.append("Woody Allen Team")
        }
        if spielbergTeamCheck.isSelected {
            self.teamNamesArray.append("Steven Spielberg Team")
        }
        if scorseseTeamCheck.isSelected {
            self.teamNamesArray.append("Martin Scorsese Team")
        }
        if tarantinoTeamCheck.isSelected {
            self.teamNamesArray.append("Quentin Tarantino Team")
        }
        
        //This function has be called one time in team definition page
        GameSession.singleton.setNumberTeamsAndActualTurn(number: Int(self.n), names: self.teamNamesArray)
        GameSession.singleton.setCasualTeamStarter()
        
    }
    
    @IBOutlet weak var woodyTeamCheck: UIButton!
    @IBOutlet weak var spielbergTeamCheck: UIButton!
    @IBOutlet weak var scorseseTeamCheck: UIButton!
    @IBOutlet weak var tarantinoTeamCheck: UIButton!
    
    @IBOutlet weak var woodyTeamPic: UIImageView!
    @IBOutlet weak var spielbergTeamPic: UIImageView!
    @IBOutlet weak var scorseseTeamPic: UIImageView!
    @IBOutlet weak var tarantinoTeamPic: UIImageView!
    

}
