//
//  moviesDataBase.swift
//  Oscards
//
//  Created by Gianna Stylianou on 21/11/19.
//  Copyright © 2019 Silvio Cresci. All rights reserved.
//

import Foundation
import UIKit

struct Movie {
    var image1: String
    var image2: String
    var image3: String
    var image4: String
    var title: String
}

var numRounds: Int = 10
var actualRound: Int = 1

var userScore: Int = 0

var randomArrayIndex: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
var indexArray: Int = 0

let movie1 = Movie(image1: "1-1", image2: "1-2", image3: "1-3", image4: "1-4", title: "KILL BILL")
let movie2 = Movie(image1: "2-1", image2: "2-2", image3: "2-3", image4: "2-4", title: "GRAND HOTEL BUDAPEST")
let movie3 = Movie(image1: "3-1", image2: "3-2", image3: "3-3", image4: "3-4", title: "THE TRUMAN SHOW")
let movie4 = Movie(image1: "4-1", image2: "4-2", image3: "4-3", image4: "4-4", title: "AMERICAN BEAUTY")
let movie5 = Movie(image1: "5-1", image2: "5-2", image3: "5-3", image4: "5-4", title: "LEON THE PROFESSIONAL")
let movie6 = Movie(image1: "6-1", image2: "6-2", image3: "6-3", image4: "6-4", title: "THE SHINING")
let movie7 = Movie(image1: "7-1", image2: "7-2", image3: "7-3", image4: "7-4", title: "CHARLIE AND THE CHOCOLATE FACTORY")
let movie8 = Movie(image1: "8-1", image2: "8-2", image3: "8-3", image4: "8-4", title: "FORREST GUMP")
let movie9 = Movie(image1: "9-1", image2: "9-2", image3: "9-3", image4: "9-4", title: "LA LA LAND")
let movie10 = Movie(image1: "10-1", image2: "10-2", image3: "10-3", image4: "10-4", title: "LORD OF THE RINGS")
let movie11 = Movie(image1: "11-1", image2: "11-2", image3: "11-3", image4: "11-4", title: "TRAINSPOTTING")
let movie12 = Movie(image1: "12-1", image2: "12-2", image3: "12-3", image4: "12-4", title: "THE WOLF OF WALL STREET")
let movie13 = Movie(image1: "13-1", image2: "13-2", image3: "13-3", image4: "13-4", title: "GREASE")
let movie14 = Movie(image1: "14-1", image2: "14-2", image3: "14-3", image4: "14-4", title: "A CLOCKWORK ORANGE")
let movie15 = Movie(image1: "15-1", image2: "15-2", image3: "15-3", image4: "15-4", title: "AMELIE")
let movie16 = Movie(image1: "16-1", image2: "16-2", image3: "16-3", image4: "16-4", title: "TITANIC")
let movie17 = Movie(image1: "17-1", image2: "17-2", image3: "17-3", image4: "17-4", title: "HARRY POTTER")
let movie18 = Movie(image1: "18-1", image2: "18-2", image3: "18-3", image4: "18-4", title: "ET")
let movie19 = Movie(image1: "19-1", image2: "19-2", image3: "19-3", image4: "19-4", title: "THE BIG LEBOWSKI")
let movie20 = Movie(image1: "20-1", image2: "20-2", image3: "20-3", image4: "20-4", title: "BLACK SWAN")

var movieArray = [movie1, movie2, movie3, movie4, movie5, movie6, movie7, movie8, movie9, movie10, movie11, movie12, movie13, movie14, movie15, movie16, movie17, movie18, movie19, movie20]




