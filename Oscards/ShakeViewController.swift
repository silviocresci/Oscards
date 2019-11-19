//
//  ShakeViewController.swift
//  Oscards
//
//  Created by Silvio Cresci on 19/11/2019.
//  Copyright © 2019 Silvio Cresci. All rights reserved.
//

import UIKit
class ShakeViewController : UIViewController{

    override func viewDidLoad() {
    
        super.viewDidLoad()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        performSegue(withIdentifier: "ViewController", sender: self)
    }
    
    @IBOutlet weak var shakeButton: UIButton!
}
