//
//  GamePageController.swift
//  Oscards
//
//  Created by Stefano Di Nunno on 14/11/2019.
//  Copyright © 2019 Stefano Di Nunno. All rights reserved.
//

import Foundation

class GamePageController {
    
    init() { }
    
    //This function will show the ValidationPage if the two titles are the same. Insteand will show NoValidTitlesPage. This function will check if the two titles are not the same and if they're already used before.
    func validationButtonPressed(title1: String, title2: String) -> Bool {
        //Titles Checking and Movies List Updating
        
        //Reset Timer
        let title1U: String = title1.uppercased()
        let title2U: String = title2.uppercased()
        
        if validateTitles(t1: title1U, t2: title2U) {
            
            if !GameSession.singleton.isMovieAlreadyUsed(title: title1U) {
                
                //Same titles and not already used, Let's go to the ValidationPage
                return true
                
            }
            
        }
        
        return false
        
    }
    
    //This function will show the ValidationPage if the two titles are the same in the end of the time. Insteand will show NoValidTitlesPage. This function will check if the two titles are not the same and if they're already used before.
    func timeOver() {
        //Titles Checking and Movies List Updating
    }
    
    //This function check if the two titles are exactly the same
    func validateTitles(t1: String, t2: String) -> Bool {
        return t1 == t2
    }
    
}
