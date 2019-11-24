//
//  TimeOverViewController.swift
//  Oscards
//
//  Created by Gianna Stylianou on 24/11/19.
//  Copyright © 2019 Silvio Cresci. All rights reserved.
//

import UIKit

class TimeOverViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        performSegue(withIdentifier: "Play Next", sender: self)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
