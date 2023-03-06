//
//  ViewController.swift
//  moovie
//
//  Created by Dana Yerlan on 3/5/23.
//

import UIKit

class MoviesViewController: UIViewController, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        let movie = movies[indexPath.row]
        cell.configure(with: movie)
        return cell
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    var movies: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        movies = Movie.mockMovies
        print(movies)
    }


}

