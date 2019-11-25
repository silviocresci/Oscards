//
//  RulesPageViewController.swift
//  Oscards
//
//  Created by Silvio Cresci on 19/11/2019.
//  Copyright © 2019 Silvio Cresci. All rights reserved.
//

import UIKit

class RulesPageViewController : UIViewController{
override func viewDidLoad() {
    
        super.viewDidLoad()
    
    self.view.backgroundColor = UIColor(patternImage: UIImage(named: "backrules")!)
    
    let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
    rightSwipe.direction = .right
    let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
    leftSwipe.direction = .left
    textArea.isEditable = false
    view.addGestureRecognizer(rightSwipe)
    view.addGestureRecognizer(leftSwipe)

    }
    
    @IBOutlet weak var btn: UIImageView!
    @IBOutlet weak var textArea: UITextView!
    @IBOutlet weak var dots: UIPageControl!
    @objc func handleSwipe(sender : UISwipeGestureRecognizer){
        if sender.state == .ended{
            switch sender.direction {
            case .left:
//                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "RulesMultiplayer.png")!)
                btn.image = UIImage(named: "rulesbtn2")
                textArea.text = "The Goal of the game is to reach the Oscar and in order to do that you have to be smart but also fast! You will need at least four to eight people and you get in pairs. You and your teamamte have to write down the same title for the movie that first comes in mind based on one, two, three or four of the displaying cards, all that before time runs out! \n\n \n\nOne team starts randomly and from there each earns points every round, of course the team who wins the most points wins the Oscar -and also the game. The path to stardom is hard, the two teammates, watching four cards, have to come up with the same movie title and write it down. Pay attention, you can’t use titles already used before and try to be smart because your opponents will judge and deem if the title you chose describes the movie correctly."
                dots.currentPage = 1
            case .right:
//                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "RulesSingleplayer.png")!)
                btn.image = UIImage(named: "rulesbtn1")
                textArea.text = "Do you think you’re the most biggest cinema fan? Find the movie that the four displaying cards are describing and write down the title before time runs out!\n\nYou only have 1 minute and the faster you are the more points you earn. Play and try to achieve each time a higher score than before! Every set of cards is a different movie. Check and see if you know them all!"
                               dots.currentPage = 0
            default:
                break
            }
        }
    }
    
    
}
