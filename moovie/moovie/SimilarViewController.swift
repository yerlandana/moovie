//
//  SimilarViewController.swift
//  moovie
//
//  Created by Dana Yerlan on 3/13/23.
//

import UIKit

class SimilarViewController: UIViewController, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return similars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SimilarCell", for: indexPath) as! SimilarCell
        let similar = similars[indexPath.row]
        cell.configure(with: similar)
        return cell
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    var similars: [Similar] = []
    var name: String?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        let url = URL(string:"https://api.themoviedb.org/3/movie/now_playing?api_key=4b5d9f5afae744b177a5e2e4ba2091ff")
        print("URRRRLLLL: "+"https://api.themoviedb.org/3/movie/"+name!+"/similar?api_key=4b5d9f5afae744b177a5e2e4ba2091ff")

        // Use the URL to instantiate a request
        let request = URLRequest(url: url!)

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
                 let response = try decoder.decode(SimilarResponse.self, from: data)

                 // Access the array of tracks from the `results` property
                 let similars = response.results
                 DispatchQueue.main.async {

                     // Set the view controller's tracks property as this is the one the table view references
                     self?.similars = similars

                     // Make the table view reload now that we have new data
                     self?.tableView.reloadData()
                 }
                 print("✅ \(similars)")
            } catch {
                print("❌ Error parsing JSON: \(String(describing: error))")
            }
        }

        // Initiate the network request
        task.resume()
        print(similars)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let indexPath = tableView.indexPathForSelectedRow {
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
   
        
    }



