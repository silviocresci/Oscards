//
//  GameSession.swift
//  Oscards
//
//  Created by Stefano Di Nunno on 13/11/2019.
//  Copyright © 2019 Stefano Di Nunno. All rights reserved.
//

import Foundation
import UIKit

class GameSession {
    static let singleton = GameSession()
    
    var numberTeams: Int            // Number of teams in game
    var finalScore: Int             // Score to Win
    var actualTurn: Int             // Number of Team Turn
    var moviesList: [String]        // Movies already used in this Game
    var teams: [Team]               // Teams in game
    var cards: [UIImage]            // Cards of the game
    
    private init() {
        self.numberTeams = 2
        self.actualTurn = 0
        
        self.finalScore = 5
        
        self.moviesList = []
        self.cards = []
        self.teams = []
        
        self.initCards()
    }
    
    //This function will initialize the cards with the images
    func initCards(){
        /*
         for i = 1 to numCards do
            cards.append(UIImage( named: "i.png" ))
         */
    }
    
    //This function will return 4 random cards
    func getFourCards() -> [UIImage] {
        /*
         4 Random numbers
         */
        
        var fourCards: [UIImage]
        fourCards = []
        return fourCards
        
    }
    
    //This function return a random value from 1 to numberOfTeams
    //The return number will be the team's number that start the game
    func setCasualTeamStarter() {
        self.setActualTurn(turn: Int.random(in: 0 ..< self.numberTeams))  //Random Number
    }
    
    //This function return next team that have to play. This is the only one funtion that will be used on game to define the turn.
    func getNextTeamTurn() -> Int {
        self.actualTurn = self.actualTurn + 1
        
        if(self.actualTurn >= self.numberTeams) {
            self.setActualTurn(turn: 0)
        }
        
        return self.actualTurn
    }
    
    //Get Team by number
    func getTeamByNumber(number: Int) -> Team {
        return self.teams[number]
    }
    
    func setActualTurn(turn: Int) {
        self.actualTurn = turn
    }
    
    func getActualTurn() -> Int {
        return self.actualTurn
    }
    
    //This function will be called one time in phase of team definition (Probably in TeamDefinitionPageController -> buttonOkPressed)
    func setNumberTeamsAndActualTurn(number: Int, names: [String]){
        self.numberTeams = number
        
        for i in 0..<self.numberTeams {
            let team = Team(nome: names[i])
            self.teams.insert(team, at: i)
        }
    }
    
    func isMovieAlreadyUsed(title: String) -> Bool {
        if self.moviesList.contains(title) {
            return true
        }
        
        return false
    }
    
    func addUsedMovieList(title: String) {
        self.moviesList.append(title)
    }
    
    func clearMovieList() {
        self.moviesList.removeAll()
    }
    
    func setFinalScore(score: Int) {
        self.finalScore = score
    }
}


