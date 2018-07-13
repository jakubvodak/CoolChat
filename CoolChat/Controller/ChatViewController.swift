//
//  ChatViewController.swift
//  CoolChat
//
//  Created by Jakub Vodak on 12/07/2018.
//  Copyright © 2018 ICT. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var jmeno: String?
    var messages = [Message]()

    @IBOutlet var input: UITextField!
    @IBOutlet var sendBtn: UIButton!
    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        title = jmeno


        // Testovaci data
        let message1 = Message(text: "Ahoj", sender: "Jakub")
        let message2 = Message(text: "Nazdar", sender: "Pavel")
        messages.append(message1)
        messages.append(message2)

        tableView.tableFooterView = UIView()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)


    }

    // MARK: - TableView

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return messages.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        return UITableViewCell()
    }

}
