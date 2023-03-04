//
//  MultipleContactsViewController.swift
//  Contacts
//
//  Created by Ярослав Любиченко on 4.3.2023.
//

import UIKit

class MultipleListViewController: UITableViewController {
    
    private let contacts = Person.getContact()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        }
    }

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let multipleContactVC = segue.destination as? MultipleContactsViewController
//        guard let indexPath = tableView.numberOfSections else { return }
//        multipleContactVC?.contact = contacts[indexPath.row]
//    }

// MARK: - UITableViewDataSource


extension MultipleListViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactsData", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contacts[indexPath.row]
        content.text = contact.phoneNumber
        content.image = UIImage(systemName: "phone")
        cell.contentConfiguration = content
    
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var title: String
        let contact = contacts[section]
        title = "\(contact.name) \(contact.surname)"
        return title
    }
 }
