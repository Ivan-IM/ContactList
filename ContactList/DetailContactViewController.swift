//
//  DetailContactViewController.swift
//  ContactList
//
//  Created by Иван Маришин on 08.06.2021.
//

import UIKit

class DetailContactViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var phoneLable: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: person.lastName)
        phoneLable.text = "Phone: \(String(person.phone))"
        emailLabel.text = "Email: \(person.email)"

    }
   
}
