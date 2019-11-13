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
////        pic1.layer.borderWidth = 2
////        pic1.layer.borderColor = UIColor.black.cgColor
//        pic2.layer.borderWidth = 2
//        pic2.layer.borderColor = UIColor.black.cgColor
//        pic3.layer.borderWidth = 2
//        pic3.layer.borderColor = UIColor.black.cgColor
//        pic4.layer.borderWidth = 2
//        pic4.layer.borderColor = UIColor.black.cgColor
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
    
    @IBAction func validationButton(_ sender: UIButton) {
    }
}

