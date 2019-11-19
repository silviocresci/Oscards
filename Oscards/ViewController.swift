//
//  ViewController.swift
//  Oscards
//
//  Created by Silvio Cresci on 13/11/2019.
//  Copyright © 2019 Silvio Cresci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var time = 60
    var timeString = ""
    var timer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textArea1.layer.borderWidth = 3
        textArea1.layer.borderColor = UIColor.darkGray.cgColor
        textArea2.layer.borderWidth = 3
        textArea2.layer.borderColor = UIColor.darkGray.cgColor
                
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
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
            firstCheck()
        }else{
            timerArea.text = "0:\(timeString)"
        }
    }
    @IBOutlet weak var timerArea: UITextField!
    
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
    @IBAction func validationButton(_ sender: UIButton) {
        firstCheck()
        time = 1000
    }
    
    @IBAction func selectNumber(_ sender: UIButton) {
        button1.setTitleColor(.black, for: .normal)
        button2.setTitleColor(.black, for: .normal)
        button3.setTitleColor(.black, for: .normal)
        button4.setTitleColor(.black, for: .normal)
        
        sender.setTitleColor(.green, for: .normal)}
    
    func firstCheck() {
        if (textArea1.text == textArea2.text){
            performSegue(withIdentifier: "ValidationPage", sender: textArea1.text)
        }
        else{
            performSegue(withIdentifier: "Lose", sender: self)
        }
    }
    
}
