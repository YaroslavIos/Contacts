//
//  PersonInfoController.swift
//  Contacts
//
//  Created by Ярослав Любиченко on 3.3.2023.
//

import UIKit

class PersonInfoController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = "Phone: \(contact.phoneNumber)"
        emailLabel.text = "Email: \(contact.email)"
        navigationItem.title = "\(contact.name) \(contact.surname)"
    }
}
