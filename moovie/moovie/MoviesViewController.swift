//
//  ViewController.swift
//  moovie
//
//  Created by Dana Yerlan on 3/5/23.
//

import UIKit

class MoviesViewController: UIViewController {
    
    var movies: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        movies = Movie.mockMovies
        print(movies)
    }


}

