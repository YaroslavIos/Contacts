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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
