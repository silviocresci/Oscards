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
                textArea.text = "The Goal of the game is to reach the Oscar and for you to do that you need to be smart but also have fast fingers! Write down the names of the movies before time runs out! \n\nFrom four to eight players (teams of twos) \n\nOne team will start randomly and from there each will earn points every round, where the team who gained the most shall win the Oscar. The path to stardom is hard, the two teammates, having four cards, have to come up with the same title and write it down. Pay attention, you can’t use titles already used before!"
                dots.currentPage = 1
            case .right:
//                self.view.backgroundColor = UIColor(patternImage: UIImage(named: "RulesSingleplayer.png")!)
                btn.image = UIImage(named: "rulesbtn1")
                textArea.text = "Do you think you’re the most knowledgeable cinema fan? Write down the names of the movies before time runs out!\n\nSingle Player\n\nEvery set of cards is a different movie. Check and see if you know them all!"
                               dots.currentPage = 0
            default:
                break
            }
        }
    }
    
    
}
