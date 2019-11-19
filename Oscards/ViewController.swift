//
//  ViewController.swift
//  Oscards
//
//  Created by Silvio Cresci on 13/11/2019.
//  Copyright © 2019 Silvio Cresci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textArea1.layer.borderWidth = 3
        textArea1.layer.borderColor = UIColor.darkGray.cgColor
        textArea2.layer.borderWidth = 3
        textArea2.layer.borderColor = UIColor.darkGray.cgColor
        
    }


    @IBOutlet weak var pic1: UIImageView!
    @IBOutlet weak var pic2: UIImageView!
    @IBOutlet weak var pic3: UIImageView!
    @IBOutlet weak var pic4: UIImageView!
    
    
    @IBOutlet weak var textArea1: UITextView!
    @IBOutlet weak var textArea2: UITextView!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    @IBAction func selectNumber(_ sender: UIButton) {
        button1.setTitleColor(.black, for: .normal)
        button2.setTitleColor(.black, for: .normal)
        button3.setTitleColor(.black, for: .normal)
        button4.setTitleColor(.black, for: .normal)
        
        sender.setTitleColor(.green, for: .normal)

    }
    
    
}
class SecondViewController : UIViewController{
    override func viewDidLoad() {
        
            super.viewDidLoad()
        }
    @IBOutlet weak var nav: UINavigationItem!
}

class RulesViewController : UIViewController{
override func viewDidLoad() {
    
        super.viewDidLoad()
    let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
    rightSwipe.direction = .right
    let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(sender:)))
    leftSwipe.direction = .left
    
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

class HomeViewController : UIViewController{
override func viewDidLoad() {
    
        super.viewDidLoad()
    }
}

class SelectViewController : UIViewController{

    @IBOutlet weak var selectButton: UIButton!
    @IBOutlet var nums: [UIButton]!
    @IBOutlet weak var playButton: UIButton!
    
    var n : CGFloat = 0
    var check : CGFloat = 0
    
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
    
    }


class ValidateViewController : UIViewController{
override func viewDidLoad() {
    
        super.viewDidLoad()
    }
}

class ShakeViewController : UIViewController{
override func viewDidLoad() {
    
        super.viewDidLoad()
    }
}

class SinglePlayerViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
