//
//  ValidationPageController.swift
//  Oscards
//
//  Created by Stefano Di Nunno on 20/11/2019.
//  Copyright © 2019 Silvio Cresci. All rights reserved.
//

import Foundation

class ValidationPageController {
    
    //Valid button pressed, so every teams validated the actually team turn. So this function assigns the team to the next position on the path. If the team is arrived to the end of the path the team will win.
    func validButtonPressed(titleInserted: String) {
        
        let teamNumber: Int = GameSession.singleton.getActualTurn()
        let team: Team = GameSession.singleton.getTeamByNumber(number: teamNumber)
        
        //Team go on in the path
        team.goNextStep()
        //Adding the title in used title list
        GameSession.singleton.addUsedMovieList(title: titleInserted)
        
        print("Team " + String(teamNumber) + "position: " + String(team.getActualPosition()))
        
    }
    
    //Other teams don't validate the titles inserted. The team turn will stay at same position.
    func noValidButtonPressed() {
        
    }
    
}
