//
//  Team.swift
//  Oscards
//
//  Created by Stefano Di Nunno on 13/11/2019.
//  Copyright © 2019 Stefano Di Nunno. All rights reserved.
//

import Foundation

class Team {
    var nameTeam: String
    var actualScore: Int
    
    init(nome: String) {
        self.actualScore = 0
        self.nameTeam = nome
    }
    
    func getNameTeam() -> String{
        return self.nameTeam
    }
    
    func getActualScore() -> Int{
        return self.actualScore
    }
    
    func addPoints() {
        self.actualScore = actualScore + 1
    }
    
    func removePoints() {
        if self.actualScore > 1 {
            self.actualScore = actualScore - 1
        }
    }
    
}
