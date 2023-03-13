//
//  Movie.swift
//  moovie
//
//  Created by Dana Yerlan on 3/5/23.
//

import Foundation

struct MovieResponse: Decodable {
    let results: [Movie]
}


struct Movie : Decodable{
    let original_title: String
    let overview: String
    let poster_path: String
    let vote_average: Float
    let vote_count: Int
    let popularity: Double
}


