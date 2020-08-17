//
//  MainViewController.swift
//  MyPlaces
//
//  Created by Steven Kirke on 17.08.2020.
//  Copyright © 2020 Steven Kirke. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaurantNames = ["Piccola Italia", "Da Pino", "Acapella", "Aoduvan",
                           "Apple Bar", "Forbest", "Artiland", "BEERSIDE Gastropub",
                           "Crazy Hunter", "OBEDBUFET", "Kukushka", "I Like Wine",
                           "Mi piace", "PrimaVera", "Happy Bones"]

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return restaurantNames.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: "hamburger.png")

        return cell
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
