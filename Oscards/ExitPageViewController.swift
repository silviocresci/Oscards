//
//  exitPageController.swift
//  Oscards
//
//  Created by Gianna Stylianou on 21/11/19.
//  Copyright © 2019 Silvio Cresci. All rights reserved.
//

import Foundation
import UIKit

class ExitPageViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func yesButtonPressed(_ sender: UIButton) {
//        let newViewController: HomeViewController = storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
//        self.navigationController?.pushViewController(newViewController, animated: true)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let vc = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController // MySecondSecreen the storyboard ID
        self.present(vc, animated: true, completion: nil);
        
    }
    
    @IBAction func noExitViewController(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
