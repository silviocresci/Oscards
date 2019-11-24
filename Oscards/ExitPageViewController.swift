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
    
    @IBAction func noExitViewController(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
