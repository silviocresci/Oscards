//
//  ViewController.swift
//  Oscards
//
//  Created by Silvio Cresci on 13/11/2019.
//  Copyright © 2019 Silvio Cresci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nav: UINavigationItem!
    
    var time = 60
    var timeString = ""
    var timer = Timer()
    var namePic : String = ""
    
    var namePic2 = 0
    var namePic3 = 0
    var namePic4 = 0
    var temp = 0

    var pic1Selected = false
    var pic2Selected = false
    var pic3Selected = false
    var pic4Selected = false

    var pics : Array<UIImage> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)


        
        for i in 1...72{
            namePic = String(i)
            pics.append(UIImage(named: namePic)!)
        }
        
        randPic()

        pic1.image = pics[Int.random(in: 63 ..< 72)]
        pic2.image = pics[namePic2]
        pic3.image = pics[namePic3]
        pic4.image = pics[namePic4]
        
        nav.setHidesBackButton(true, animated: true)
        textArea1.layer.borderWidth = 3
        textArea1.layer.borderColor = UIColor.darkGray.cgColor
        textArea2.layer.borderWidth = 3
        textArea2.layer.borderColor = UIColor.darkGray.cgColor
        
                
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
        
        let tapGestureRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(imageTapped1(tapGestureRecognizer:)))
        pic1.isUserInteractionEnabled = true
        pic1.addGestureRecognizer(tapGestureRecognizer1)
        let tapGestureRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(imageTapped2(tapGestureRecognizer:)))
        pic2.isUserInteractionEnabled = true
        pic2.addGestureRecognizer(tapGestureRecognizer2)
        let tapGestureRecognizer3 = UITapGestureRecognizer(target: self, action: #selector(imageTapped3(tapGestureRecognizer:)))
        pic3.isUserInteractionEnabled = true
        pic3.addGestureRecognizer(tapGestureRecognizer3)
        let tapGestureRecognizer4 = UITapGestureRecognizer(target: self, action: #selector(imageTapped4(tapGestureRecognizer:)))
        pic4.isUserInteractionEnabled = true
        pic4.addGestureRecognizer(tapGestureRecognizer4)
        
        
    }
    
    @objc func imageTapped1(tapGestureRecognizer: UITapGestureRecognizer)
    {
        _ = tapGestureRecognizer.view as! UIImageView
        
        if(pic1Selected==false){
        pic1.layer.borderWidth = 5
        pic1.layer.borderColor = UIColor.green.cgColor
        pic1Selected = true
        }else{
            pic1.layer.borderWidth = 0
            pic1Selected = false
        }
    }
    
    @objc func imageTapped2(tapGestureRecognizer: UITapGestureRecognizer)
    {
        _ = tapGestureRecognizer.view as! UIImageView
        if(pic2Selected==false){
        pic2.layer.borderWidth = 5
        pic2.layer.borderColor = UIColor.green.cgColor
        pic2Selected = true
        }else{
            pic2.layer.borderWidth = 0
            pic2Selected = false
        }
        
    }
    
    @objc func imageTapped3(tapGestureRecognizer: UITapGestureRecognizer)
    {
        _ = tapGestureRecognizer.view as! UIImageView
        if(pic3Selected==false){
        pic3.layer.borderWidth = 5
        pic3.layer.borderColor = UIColor.green.cgColor
        pic3Selected = true
        }else{
            pic3.layer.borderWidth = 0
            pic3Selected = false
        }
    }
    
    @objc func imageTapped4(tapGestureRecognizer: UITapGestureRecognizer)
    {
        _ = tapGestureRecognizer.view as! UIImageView
        if(pic4Selected==false){
        pic4.layer.borderWidth = 5
        pic4.layer.borderColor = UIColor.green.cgColor
        pic4Selected = true
        }else{
            pic4.layer.borderWidth = 0
            pic4Selected = false
        }
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height
            }
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
    }
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "ValidationPage"){
            (segue.destination as! ValidationViewController).solution = "\(textArea1.text ?? "")"
            (segue.destination as! ValidationViewController).img1 = pic1
            (segue.destination as! ValidationViewController).img2 = pic2
            (segue.destination as! ValidationViewController).img3 = pic3
            (segue.destination as! ValidationViewController).img4 = pic4

        }
    }
    @objc func action(){
         time -= 1
        timeString = String(time)
        if(time<10 && time >= 0){
        timerArea.text = "0:0\(timeString)"
        }else if (time == -1){
            timer.invalidate()
            firstCheck()
        }else{
            timerArea.text = "0:\(timeString)"
        }
    }
    
    func randPic(){
        namePic2 = Int.random(in: 0 ..< 62)
        while(true){
            namePic3 = Int.random(in: 0 ..< 62)
            if(namePic3 != namePic2){
                break
            }
        }
        while(true){
                   namePic4 = Int.random(in: 0 ..< 62)
                   if(namePic4 != namePic2 && namePic4 != namePic3){
                       break
                   }
               }

    }
    
    
    @IBOutlet weak var timerArea: UITextField!
    @IBOutlet weak var pic1: UIImageView!
    @IBOutlet weak var pic2: UIImageView!
    @IBOutlet weak var pic3: UIImageView!
    @IBOutlet weak var pic4: UIImageView!
    
    
    @IBOutlet weak var textArea1: UITextField!
    @IBOutlet weak var textArea2: UITextField!
    
    
    @IBAction func validationButton(_ sender: UIButton) {
        timer.invalidate()
        
        firstCheck()
    }
    
    func firstCheck() {
/*      if (textArea1.text == textArea2.text){
            performSegue(withIdentifier: "ValidationPage", sender: textArea1.text)
        }
        else{
            performSegue(withIdentifier: "Lose", sender: self)
        }
*/
                
        let gamePageController: GamePageController = GamePageController.init()
                
        if gamePageController.validationButtonPressed(title1: self.textArea1.text!, title2: self.textArea2.text!) {
                    
            //Same Titles and not used before. Show ValidationView
            let newViewController: ValidationViewController = storyboard?.instantiateViewController(withIdentifier: "ValidationViewController") as! ValidationViewController
            newViewController.setValue(self.textArea1.text?.uppercased(), forKey: "title")
            //            newViewController.setValue(String(self.namePic), forKey: "pic1")
            //            newViewController.setValue(String(self.namePic2), forKey: "pic2")
            //            newViewController.setValue(String(self.namePic3), forKey: "pic3")
            //            newViewController.setValue(String(self.namePic4), forKey: "pic4")
                    
            self.navigationController?.pushViewController(newViewController, animated: true)
                    
        }else{
                    
            //Titles already used or different. Show LoseView
            let newViewController: LoseViewController = storyboard?.instantiateViewController(withIdentifier: "LoseViewController") as! LoseViewController
            self.navigationController?.pushViewController(newViewController, animated: true)
                    
        }
    }
    
}
