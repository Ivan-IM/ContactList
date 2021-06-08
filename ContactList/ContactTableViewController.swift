//
//  ViewController.swift
//  ContactList
//
//  Created by Иван Маришин on 08.06.2021.
//

import UIKit

class ContactTableViewController: UITableViewController {
    
    private var personList = Person.getPersonList()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ContactTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
}

extension ContactTableViewController {
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "personCell",
            for: indexPath
        )
        let person = personList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }
}

extension ContactTableViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? DetailContactViewController,
              let indexPath = tableView.indexPathForSelectedRow
        else { return }
        
        let person = personList[indexPath.row]
        vc.person = person
    }
}
