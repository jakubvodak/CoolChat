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
    }

    @IBAction func titleTap() {
        label.textColor = .green
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if let jmeno = input.text,
            let cil = segue.destination as? ChatViewController {

            cil.jmeno = jmeno
        }
    }
}
