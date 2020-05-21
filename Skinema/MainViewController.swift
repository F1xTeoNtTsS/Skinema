//
//  MainViewController.swift
//  Skinema
//
//  Created by Dmitrii Abanin on 5/17/20.
//  Copyright © 2020 Hyperprism. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restnames = ["Bonsai", "Burger Heroes", "Kitchen",
                      "Love&Life", "Morris Pub",
                      "Sherlock Holmes", "Speak Easy", "X.O",
                      "Балкан Гриль", "Бочка",
                      "Вкусные истории", "Дастархан", "Индокитай", "Классик",
                      "Шок"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restnames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = restnames[indexPath.row]
        cell.imageView?.image = UIImage(named: restnames[indexPath.row])

        return cell
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
