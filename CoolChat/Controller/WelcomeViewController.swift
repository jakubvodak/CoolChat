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

    override func viewDidLoad() {
        super.viewDidLoad()

        print("Ahoj jak se mas Michale")


        let tap = UITapGestureRecognizer(target: self, action: #selector(WelcomeViewController.titleTap))

        label.addGestureRecognizer(tap)

    }



    @IBAction func titleTap() {

        label.textColor = .green
    }



    
}
