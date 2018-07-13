//
//  Message.swift
//  CoolChat
//
//  Created by Jakub Vodak on 13/07/2018.
//  Copyright © 2018 ICT. All rights reserved.
//

import Foundation

class Message {

    let text: String
    let sender: String

    var dictValue: NSDictionary {
        get {
            return ["jmeno": sender, "text": text]
        }
    }

    init(text: String, sender: String) {

        self.text = text
        self.sender = sender

    }




}
