//
//  DetailViewController.swift
//  moovie
//
//  Created by Dana Yerlan on 3/6/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieVoteAverageLabel: UILabel!
    @IBOutlet weak var movieVoteCountLabel: UILabel!
    @IBOutlet weak var popularityLabel: UILabel!
    @IBOutlet weak var movieDescLabel: UILabel!
    
    var movie: Movie!

    override func viewDidLoad() {
        super.viewDidLoad()

        Nuke.loadImage(with: movie.movieUrl100, into: movieImageView)

            movieTitleLabel.text = movie.movieTitle
            movieDescLabel.text = movie.movieDesc
            movieVoteAverageLabel.text = movie.voteAverage
            movieVoteCountLabel.text = movie.voteCount
            popularityLabel.text = movie.popularity

            

    }
}
