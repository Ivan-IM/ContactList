//
//  SecondContactTableViewController.swift
//  ContactList
//
//  Created by Иван Маришин on 08.06.2021.
//

import UIKit

class SecondContactTableViewController: UITableViewController {
    
    private var personList = Person.getPersonList()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension SecondContactTableViewController {
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        label.text = personList[section].fullName
        label.backgroundColor = UIColor.gray
        return label
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return personList.count
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "pCell",
            for: indexPath
        )
        cell.textLabel?.text = String(personList[indexPath.section].phone)

        return cell
    }
}
