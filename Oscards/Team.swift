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
    var actualPosition: Int
    
    init(nome: String) {
        self.actualPosition = 1
        self.nameTeam = nome
    }
    
    func getNameTeam() -> String{
        return self.nameTeam
    }
    
    func getActualPosition() -> Int{
        return self.actualPosition
    }
    
    func goNextStep() {
        self.actualPosition = actualPosition + 1
    }
    
    func goBackStep() {
        if self.actualPosition > 1 {
            self.actualPosition = actualPosition - 1
        }
    }
    
}
