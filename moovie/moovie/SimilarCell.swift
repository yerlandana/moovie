//
//  SimilarViewCell.swift
//  moovie
//
//  Created by Dana Yerlan on 3/13/23.
//

import UIKit
import Nuke

class SimilarCell: UITableViewCell {

    @IBOutlet weak var similarMovieTitle: UILabel!
    @IBOutlet weak var similarMovieDesc: UILabel!
    @IBOutlet weak var similarImageView: UIImageView!
    
    
   
    func configure(with similar: Similar) {
        similarMovieTitle.text = similar.original_title
        similarMovieDesc.text = similar.overview

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: URL(string: "https://image.tmdb.org/t/p/w1280"+similar.poster_path)!, into: similarImageView)
    }
}
