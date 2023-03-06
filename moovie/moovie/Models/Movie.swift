//
//  Movie.swift
//  moovie
//
//  Created by Dana Yerlan on 3/5/23.
//

import Foundation


struct Movie {
    let movieTitle: String
    let movieDesc: String
    let movieUrl100: URL
    let voteAverage: String
    let voteCount: String
    let popularity: String
}

extension Movie {
    static var mockMovies : [Movie] = [
        Movie(movieTitle: "Knock at the Cabin",
              movieDesc: "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.",
              movieUrl100: URL(string:"https://m.media-amazon.com/images/M/MV5BZDA0MzcxZTgtMTAzZC00MGJkLTg3YzItZjMzNjkwOTVlODNlXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg")!,
              voteAverage: "6.6",
              voteCount: "751",
              popularity: "4286.16"),
        
        Movie(movieTitle: "Black Panther: Wakanda Forever",
              movieDesc: "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death.  As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.",
              movieUrl100: URL(string:"https://m.media-amazon.com/images/M/MV5BNTM4NjIxNmEtYWE5NS00NDczLTkyNWQtYThhNmQyZGQzMjM0XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_FMjpg_UX1000_.jpg")!,
              voteAverage: "7.4",
              voteCount: "3783",
              popularity: "2949.117"),
        
        Movie(movieTitle: "Puss in Boots: The Last Wish",
              movieDesc: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.",
              movieUrl100: URL(string:"https://m.media-amazon.com/images/M/MV5BNjMyMDBjMGUtNDUzZi00N2MwLTg1MjItZTk2MDE1OTZmNTYxXkEyXkFqcGdeQXVyMTQ5NjA0NDM0._V1_FMjpg_UX1000_.jpg")!,
              voteAverage: "8.4",
              voteCount: "4235",
              popularity: "2820.651"),
        
        Movie(movieTitle: "Plane",
              movieDesc: "After a heroic job of successfully landing his storm-damaged aircraft in a war zone, a fearless pilot finds himself between the agendas of multiple militias planning to take the plane and its passengers hostage.",
              movieUrl100: URL(string:"https://m.media-amazon.com/images/M/MV5BYWJkZGMxYjUtNDdkMC00MDQxLWI2M2QtZmM2ZGIyODYyZDc3XkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg")!,
              voteAverage: "6.9",
              voteCount: "754",
              popularity: "2200.205"),
        
        Movie(movieTitle: "Little Dixie",
              movieDesc: "Erstwhile Special Forces operative Doc Alexander is asked to broker a truce with the Mexican drug cartel in secrecy. When Oklahoma Governor Richard Jeffs celebrates the execution of a high-ranking cartel member on TV, his Chief of Staff and Doc inform him about the peace he just ended. But it’s too late, as Cuco, the cartel’s hatchet man, has set his vengeful sights on Doc’s daughter Dixie.",
              movieUrl100: URL(string:"https://m.media-amazon.com/images/M/MV5BYjFmMjFmYTYtNDg4MS00NDU1LWJmMzktNzYyN2Y3M2EzZWFlXkEyXkFqcGdeQXVyMjEzMjMzNDc@._V1_FMjpg_UX1000_.jpg")!,
              voteAverage: "6.3",
              voteCount: "44",
              popularity: "1698.096")
        
    ]
}
