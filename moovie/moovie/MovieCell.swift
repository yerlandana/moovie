//
//  MovieCell.swift
//  moovie
//
//  Created by Dana Yerlan on 3/5/23.
//

import UIKit
import Nuke
class MovieCell: UITableViewCell {

    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var movieDescLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configure(with movie: Movie) {
        movieTitleLabel.text = movie.movieTitle
        movieDescLabel.text = movie.movieDesc

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: movie.movieUrl100, into: movieImageView)
    }
}
