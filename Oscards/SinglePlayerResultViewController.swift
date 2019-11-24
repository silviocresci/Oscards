//
//  SinglePlayerResultViewController.swift
//  Oscards
//
//  Created by Gianna Stylianou on 19/11/19.
//  Copyright © 2019 Silvio Cresci. All rights reserved.
//

import UIKit

class SinglePlayerResultViewController: UIViewController {

    var userAnswer : String!
    var actualAnswer: String!
    var userMessage : String!
    var img1 : UIImageView!
    var img2 : UIImageView!
    var img3 : UIImageView!
    var img4 : UIImageView!
    var totalRounds : Int!
    var currentRound : Int!
    
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var messageToUser: UILabel!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var imageView4: UIImageView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        img1.image = imageView1.image
        img2.image = imageView2.image
        img3.image = imageView3.image
        img4.image = imageView4.image
        
        if (actualAnswer.uppercased() == userAnswer.uppercased()){
            userMessage = "Bravo🎉 Your answer is correct!"
            answerLabel.textColor = .green
            answerLabel.font = .boldSystemFont(ofSize: 17)
        } else {
            userMessage = "Sorry wrong answer😿 Try next time!"
            answerLabel.textColor = .red
            answerLabel.font = .boldSystemFont(ofSize: 17)
        }
        answerLabel.text = userAnswer
        messageToUser.text = userMessage
    }
    
    @IBAction func nextMoveButton(_ sender: Any) {
        if (actualRound < numRounds) {
            performSegue(withIdentifier: "Next Round", sender: self)
        } else if (actualRound >= numRounds) {
            performSegue(withIdentifier: "Show Score", sender: self)
        }
    }


}
