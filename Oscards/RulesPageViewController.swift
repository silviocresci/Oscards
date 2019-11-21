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
    let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
    rightSwipe.direction = .right
    let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
    leftSwipe.direction = .left
    textArea.isEditable = false
    view.addGestureRecognizer(rightSwipe)
    view.addGestureRecognizer(leftSwipe)

    }
    
    @IBOutlet weak var textArea: UITextView!
    @IBOutlet weak var dots: UIPageControl!
    @objc func handleSwipe(sender : UISwipeGestureRecognizer){
        if sender.state == .ended{
            switch sender.direction {
            case .right:
                textArea.text = "Rules Multiplayer rules multiplayer rules multiplayer Rules Multiplayer rules multiplayer rules multiplayer Rules Multiplayer rules multiplayer rules multiplayer Rules Multiplayer rules multiplayer rules multiplayer Rules Multiplayer rules multiplayer rules multiplayer Rules Multiplayer rules multiplayer rules multiplayer Rules Multiplayer rules multiplayer rules multiplayer Rules Multiplayer rules multiplayer rules multiplayer Rules Multiplayer rules multiplayer rules multiplayer Rules Multiplayer rules multiplayer rules multiplayer  "
                dots.currentPage = 0
            case .left:
                               textArea.text = "Rules Singleplayer rules singleplayer rules singleplayer Rules Singleplayer rules singleplayer rules singleplayer Rules Singleplayer rules singleplayer rules singleplayer Rules Singleplayer rules singleplayer rules singleplayer Rules Singleplayer rules singleplayer rules singleplayer Rules Singleplayer rules singleplayer rules singleplayer Rules Singleplayer rules singleplayer rules singleplayer Rules Singleplayer rules singleplayer rules singleplayer Rules Singleplayer rules singleplayer rules singleplayer Rules Singleplayer rules singleplayer rules singleplayer  "
                               dots.currentPage = 1
            default:
                break
            }
        }
    }
    
    
}
