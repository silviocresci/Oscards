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
    
    var n : CGFloat = 0
    var check : CGFloat = 0
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
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
        } else if(n == .n3){
            selectButton.setTitle("3", for: .normal)
            self.n = 3
        } else {
            selectButton.setTitle("4", for: .normal)
            self.n = 4
        }
    }
    @IBAction func checkBoxTapped(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            check -= 1
        } else{
            if(check < n){
                sender.isSelected = true
                check += 1
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
