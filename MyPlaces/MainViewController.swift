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
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell

        cell.nameLabel?.text = restaurantNames[indexPath.row]
        cell.imageOfPlaces?.image = UIImage(named: "hamburger.png")
        cell.imageOfPlaces?.layer.cornerRadius = cell.imageOfPlaces.frame.size.height / 2
        cell.imageOfPlaces?.clipsToBounds = true

        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
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
