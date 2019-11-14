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


