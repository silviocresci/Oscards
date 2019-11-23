//
//  HomeViewController.swift
//  Oscards
//
//  Created by Silvio Cresci on 19/11/2019.
//  Copyright © 2019 Silvio Cresci. All rights reserved.
//

import UIKit
class HomeViewController : UIViewController{
    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    @IBOutlet weak var img5: UIImageView!
    @IBOutlet weak var img6: UIImageView!
    @IBOutlet weak var img7: UIImageView!
    @IBOutlet weak var img8: UIImageView!
    @IBOutlet weak var img9: UIImageView!
    @IBOutlet weak var img10: UIImageView!
    
    
override func viewDidLoad() {
    
        super.viewDidLoad()
    self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Back.png")!)
    
    Single.backgroundColor = UIColor(patternImage: UIImage(named: "btn1")!)
    Multi.backgroundColor = UIColor(patternImage: UIImage(named: "btn2")!)
    Rules.backgroundColor = UIColor(patternImage: UIImage(named: "btn3")!)

    
    func rotate1(image: UIImageView, aCircleTime: Double) {
                    
                    let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation")
                    rotationAnimation.fromValue = 0.0
                    rotationAnimation.toValue = 90.0
                    rotationAnimation.duration = aCircleTime
                    rotationAnimation.repeatCount = .infinity
                    image.layer.add(rotationAnimation, forKey: nil)
            
            }
            
            func rotate2(image: UIImageView, aCircleTime: Double) {
           
                let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation")
                rotationAnimation.fromValue = 0.0
                rotationAnimation.toValue = -90.0
                rotationAnimation.duration = aCircleTime
                rotationAnimation.repeatCount = .infinity
                image.layer.add(rotationAnimation, forKey: nil)
                
            }
                
            rotate1(image: img1, aCircleTime: 180)
            rotate2(image: img2, aCircleTime: 180)
            rotate1(image: img3, aCircleTime: 180)
            rotate2(image: img4, aCircleTime: 180)
            rotate1(image: img5, aCircleTime: 180)
            rotate2(image: img6, aCircleTime: 180)
            rotate1(image: img7, aCircleTime: 180)
            rotate2(image: img8, aCircleTime: 180)
            rotate1(image: img9, aCircleTime: 180)
            rotate2(image: img10, aCircleTime: 180)
            //img1.addGestureRecognizer(UIPanGestureRecognizer(target:self, action:"handlePan"))
    
    
    }
        override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    @IBOutlet weak var Single: UIButton!
    @IBOutlet weak var Multi: UIButton!
    @IBOutlet weak var Rules: UIButton!
    

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}
