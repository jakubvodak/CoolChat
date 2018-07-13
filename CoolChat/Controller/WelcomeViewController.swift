//
//  WelcomeViewController.swift
//  CoolChat
//
//  Created by Jakub Vodak on 12/07/2018.
//  Copyright © 2018 ICT. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var label: UILabel!
    @IBOutlet var input: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        let tap = UITapGestureRecognizer(target: self, action: #selector(WelcomeViewController.titleTap))
        label.addGestureRecognizer(tap)

        // Ulozeni username
        if let ulozeneJmeno = UserDefaults.standard.string(forKey: "UserName") {
            input.text = ulozeneJmeno
        }
    }

    @IBAction func titleTap() {
        label.textColor = .green
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)

        if let jmeno = input.text,
            let cil = segue.destination as? ChatViewController { //typova kontrola, pro budouci rozsireni

            //Zapsani do pameti, muze mit zpozdeni
            UserDefaults.standard.set(jmeno, forKey: "UserName")
            //Zavolanim "synchronize" se ulozeni provede ihned
            UserDefaults.standard.synchronize()

            cil.jmeno = jmeno
        }
    }
}
