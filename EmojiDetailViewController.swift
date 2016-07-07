//
//  EmojiDetailViewController.swift
//  Emoji Meanings
//
//  Created by Radhika Gulati on 11/14/14.
//  Copyright (c) 2014 Radhika Gulati. All rights reserved.
//

import Foundation
import UIKit

class EmojiDetailViewController: UIViewController{
    //a property is something that can be accessed by other people
    var emoji = "😎"
    var emojiDefinition = "No definition"
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDictionaryLabel: UILabel!
    override func viewDidLoad() {
        self.emojiLabel.text = self.emoji
        self.emojiDictionaryLabel.text = self.emojiDefinition
        self.view.backgroundColor = UIColor.orangeColor()
    }
}