//
//  ContactsListViewController.swift
//  Contacts
//
//  Created by Ярослав Любиченко on 2.3.2023.
//

import UIKit

class ContactsListViewController: UITableViewController {

    private let contacts = Person.getContact()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let personInfoVC = segue.destination as? PersonInfoController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        personInfoVC?.contact = contacts[indexPath.row]
    }

}

// MARK: - UITableViewDataSource

extension ContactsListViewController {

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contacts[indexPath.row]
        content.text = "\(contact.name) \(contact.surname)"
        cell.contentConfiguration = content
        
        return cell
    }
}
