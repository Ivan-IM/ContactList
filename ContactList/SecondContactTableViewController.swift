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
    
    /// Mark: назначение имени секции
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        
        label.text = personList[section].fullName
        label.backgroundColor = UIColor.gray
        return label
    }
    /// Mark: установка числа секций
    override func numberOfSections(in tableView: UITableView) -> Int {
        return personList.count
    }
    /// Mark: установка числа ячеек
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    /// Mark: назначение содержимого ячеек
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row < 1 {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "Cell",
            for: indexPath
        )
            cell.textLabel?.text = String(personList[indexPath.section].phone)
            return cell
        }
        else {
        let postCell = tableView.dequeueReusableCell(
            withIdentifier: "postCell",
            for: indexPath
        )
        postCell.textLabel?.text = personList[indexPath.section].email
        return postCell
        }
    }
}
