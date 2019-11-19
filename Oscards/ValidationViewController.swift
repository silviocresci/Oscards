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

    @IBOutlet weak var view1: UIImageView!
    @IBOutlet weak var view2: UIImageView!
    @IBOutlet weak var view3: UIImageView!
    @IBOutlet weak var view4: UIImageView!
    
    @IBOutlet weak var text: UITextView!
    override func viewDidLoad() {
        
            super.viewDidLoad()
        view1.image = img1.image
        view2.image = img2.image
        view3.image = img3.image
        view4.image = img4.image
        text.text = solution
        
        }
    
    @IBOutlet weak var nav: UINavigationItem!
}
