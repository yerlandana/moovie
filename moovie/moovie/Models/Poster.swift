//
//  Poster.swift
//  moovie
//
//  Created by Dana Yerlan on 3/13/23.
//

import Foundation
struct PosterSearchResponse: Decodable {
    let results: [Poster]
}

struct Poster: Decodable {
    let poster_path: String
}
