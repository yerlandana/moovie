//
//  Similar.swift
//  moovie
//
//  Created by Dana Yerlan on 3/13/23.
//

import Foundation
struct SimilarResponse: Decodable {
    let results: [Similar]
}

struct Similar: Decodable {
    let original_title: String
    let overview: String
    let poster_path: String
}
