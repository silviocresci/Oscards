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
