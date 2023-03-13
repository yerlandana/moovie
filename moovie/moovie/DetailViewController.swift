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

        Nuke.loadImage(with: URL(string: "https://image.tmdb.org/t/p/w1280"+movie.poster_path)!, into: movieImageView)

            movieTitleLabel.text = movie.original_title
            movieDescLabel.text = movie.overview
            movieVoteAverageLabel.text = String(movie.vote_average)
            movieVoteCountLabel.text = String(movie.vote_count)
            popularityLabel.text = String(movie.popularity)

            

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "inputVcToDisplay"){
                let displayVC = segue.destination as! SimilarViewController
                displayVC.name = String(movie.id)
            }
        }
    

    @IBAction func sendDataButtonClicked(_ sender: Any) {
            print("iiiidddd: "+String(movie.id))
        self.performSegue(withIdentifier: "inputVcToDisplay", sender: self)
            
    }
    
}
