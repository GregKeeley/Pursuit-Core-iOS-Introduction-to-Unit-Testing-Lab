//
//  JokesViewController.swift
//  IntroToUnitTests
//
//  Created by Gregory Keeley on 12/2/19.
//  Copyright © 2019 Gregory Keeley. All rights reserved.
//

import UIKit

class JokesViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    
    var jokes = [Joke]() {
        didSet {
            tableview.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
    }
    
}

extension JokesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jokes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "jokeCell", for: indexPath)
        let joke = jokes[indexPath.row]
        cell.textLabel?.text = joke.setup
        return cell
    }
}
