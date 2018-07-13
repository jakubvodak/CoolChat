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

        tableView.tableFooterView = UIView()

        //nactiTestovaciData()
    }

    func nactiTestovaciData() {

        // Testovaci data
        let message1 = Message(text: "Ahoj", sender: "Jakub")
        let message2 = Message(text: "Nazdar", sender: "Pavel")
        messages.append(message1)
        messages.append(message2)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)


    }


    @IBAction func sendMessage() {

        if let name = jmeno,
            let text = input.text {

            let message = Message(text: text, sender: name)
            messages.insert(message, at: 0)

            tableView.reloadData()

            input.text = String()
        }
    }


    // MARK: - TableView

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        print("Kolik je bunek?")
        print(messages.count)
        print("------------")

        return messages.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        print("Obsah bunky")
        print(indexPath.row)
        print("-------------")

        let cell = tableView.dequeueReusableCell(withIdentifier: "MessageTableViewCell", for: indexPath) as! MessageTableViewCell

        let message = messages[indexPath.row]

        cell.lblName.text = message.sender
        cell.lblText.text = message.text

        return cell
    }

}
