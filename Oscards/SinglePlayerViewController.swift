//
//  singlePlayerViewController.swift
//  Oscards
//
//  Created by Gianna Stylianou on 19/11/19.
//  Copyright © 2019 Silvio Cresci. All rights reserved.
//

import UIKit

class SinglePlayerViewController : UIViewController {
    

    // text area for single player
    
    @IBOutlet weak var singleValidationButton: UIButton!
    @IBOutlet weak var singleTextField: UITextField!
    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var timerArea: UILabel!
    @IBOutlet weak var roundsTextField: UILabel!
    @IBOutlet weak var card1: UIImageView!
    @IBOutlet weak var card2: UIImageView!
    @IBOutlet weak var card3: UIImageView!
    @IBOutlet weak var card4: UIImageView!

    // variables for the timer
    var time = 60
    var timeString = ""
    var timer = Timer()
    var timeLeft = 0
    
    var numberOfRounds : Int = 0
    var roundsCount : Int = 0
    var currentIndex: Int = 0
    var currentCardIndex: Int = 0
    var resultMessage = ""
    var titleString: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        card1.image = UIImage(named: movieArray[randomArrayIndex[indexArray]].image1)
        card2.image = UIImage(named: movieArray[randomArrayIndex[indexArray]].image2)
        card3.image = UIImage(named: movieArray[randomArrayIndex[indexArray]].image3)
        card4.image = UIImage(named: movieArray[randomArrayIndex[indexArray]].image4)
        titleString = movieArray[randomArrayIndex[indexArray]].title
        
        configureTextField()
        configureTapGesture()
        showRounds()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(SinglePlayerViewController.action), userInfo: nil, repeats: true)
    }
    
    // the function that counts the 1min during the player has to find the title
    
    @objc func action() {
        time -= 1
        timeLeft = time
        timeString = String(time)
        if(time<10 && time >= 0){
            timerArea.text = "0:\(timeString)"
            timerArea.textColor = .red
        }else if (time == -1){
            stopTimer()
        } else {
            timerArea.text = "0:\(timeString)"
        }
    }
    
    
    // configure the tap gesture to exit keyboard
    private func configureTapGesture() {
        let tapGesture = UITapGestureRecognizer (target: self, action: #selector(SinglePlayerViewController.handleTap))
        view.addGestureRecognizer(tapGesture)
    }

    @objc func handleTap() {
        print("Handle tap was called")
        view.endEditing(true)
    }
    
    //dismiss the keyboard when we type outside the keyboard
    private func configureTextField() {
        singleTextField.delegate = self
    }
  
    @IBAction func validationTapped(_ sender: Any) {
        view.endEditing(true)
        stopTimer()
    }
    

    func stopTimer() {
        actualRound += 1
        indexArray += 1
        performSegue(withIdentifier: "Time Over", sender: self)
        var userAnswer: String = ""
        userAnswer = singleTextField.text ?? ""
        
        if (titleString.uppercased() == userAnswer.uppercased()) {
            userScore += 100 + timeLeft
            resultMessage = "Bravo🎉 Your answer is correct!"
        } else {
            resultMessage = "Sorry wrong answer👎 Try next time!"
        }
    }
    
    func showRounds() {
        roundsTextField.text = "\(String(actualRound))/\(String(numRounds))"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "Show Result"){
            (segue.destination as! SinglePlayerResultViewController).userAnswer = singleTextField.text
            (segue.destination as! SinglePlayerResultViewController).userMessage = resultMessage
            (segue.destination as! SinglePlayerResultViewController).actualAnswer = titleString
            (segue.destination as! SinglePlayerResultViewController).img1 = card1
            (segue.destination as! SinglePlayerResultViewController).img2 = card2
            (segue.destination as! SinglePlayerResultViewController).img3 = card3
            (segue.destination as! SinglePlayerResultViewController).img4 = card4
            let destinationVC1 = segue.destination as! SinglePlayerResultViewController
            destinationVC1.totalRounds = numberOfRounds
            let destinationVC2 = segue.destination as! SinglePlayerResultViewController
            destinationVC2.currentRound = roundsCount
        }
    }
}

extension SinglePlayerViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

