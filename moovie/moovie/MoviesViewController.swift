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
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=4b5d9f5afae744b177a5e2e4ba2091ff")!

        // Use the URL to instantiate a request
        let request = URLRequest(url: url)

        // Create a URLSession using a shared instance and call its dataTask method
        // The data task method attempts to retrieve the contents of a URL based on the specified URL.
        // When finished, it calls it's completion handler (closure) passing in optional values for data (the data we want to fetch), response (info about the response like status code) and error (if the request was unsuccessful)
        let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in

            // Handle any errors
            if let error = error {
                print("❌ Network error: \(error.localizedDescription)")
            }

            // Make sure we have data
            guard let data = data else {
                print("❌ Data is nil")
                return
            }

             do {
                 // Create a JSON Decoder
                 let decoder = JSONDecoder()

                 // Use the JSON decoder to try and map the data to our custom model.
                 // TrackResponse.self is a reference to the type itself, tells the decoder what to map to.
                 let response = try decoder.decode(MovieResponse.self, from: data)

                 // Access the array of tracks from the `results` property
                 let movies = response.results
                 DispatchQueue.main.async {

                     // Set the view controller's tracks property as this is the one the table view references
                     self?.movies = movies

                     // Make the table view reload now that we have new data
                     self?.tableView.reloadData()
                 }
                 print("✅ \(movies)")
            } catch {
                print("❌ Error parsing JSON: \(String(describing: error))")
            }
        }

        // Initiate the network request
        task.resume()
        print(movies)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let indexPath = tableView.indexPathForSelectedRow {
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let cell = sender as? UITableViewCell,
           let indexPath = tableView.indexPath(for: cell),
           let detailViewController = segue.destination as? DetailViewController {
            let movie = movies[indexPath.row]
            detailViewController.movie = movie
            
        }
        
        
    }

}

