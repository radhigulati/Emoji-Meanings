//
//  EmojiListViewController.swift
//  Emoji Meanings
//
//  Created by Radhika Gulati on 11/7/14.
//  Copyright (c) 2014 Radhika Gulati. All rights reserved.
//
/*  Make sure to connect VC and storyboard by going to storyboard and making sure class is set
    - Use ctrl + () to drag into VC
*/

import Foundation
import UIKit //default things(such as UIVC)

class EmojiListViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
// UITDS and UITVD respond to ELVC tells how many cells and what is in each cell
//class is an object - something we are using
//UIVC is an empty starting point
    
  /* override func viewDidLoad() {
        viewDL is called when EmojilistVS is called for the very first time and it sets the background color to blue
        self.view.backgroundColor = UIColor.blueColor()
    }*/
    @IBOutlet weak var tableView: UITableView!
    
    var emojis = ["😍", "😄", "😃", "😀", "😊", "☺️", "😉", "😘", "😚", "😗", "😙", "😜"]
    
    var emoji = "😘"
    
    override func viewDidLoad() {
        self.tableView.dataSource = self //reference class to see how many cells are needed
        self.tableView.delegate = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // Inside of tableview - cells (how many rows)
        return self.emojis.count // however many are in array can also do return some number
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        //cell.backgroundColor = UIColor.yellowColor()
       /* cell.textLabel.text = "😘"  ctrl+cmd+space to get emojis */
        cell.textLabel!.text = self.emojis[indexPath.row] //self.emojis references indexpath.row to decide what goes in each row
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //When someone selecs one of the rows inside one of the table views, selct specific segue...
        //set property emoji to whatever user tapped on
        self.emoji = self.emojis[indexPath.row]
        self.performSegueWithIdentifier("tableViewToEmojiSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        //I'm about to preform a segue, is there anything you want me to do? Yes! Take EDVC and assign its propery (var emohi = "") to whatever the user tapped on 
        
        //set DVC to whichever VC is about to be transitioned to
        let detailViewController = segue.destinationViewController as! EmojiDetailViewController
        //set emoji property equal too...
        detailViewController.emoji = self.emoji
        
        if self.emoji == "😍"{
            detailViewController.emojiDefinition = "Smiling face with heart-shaped eyes"
        }
        if self.emoji == "😄"{
            detailViewController.emojiDefinition = "Smiling face with open mouth and smiling eyes"
        }
        if self.emoji == "😃"{
            detailViewController.emojiDefinition = "Smiling face with open mouth and vertical shaped eyes"
        }
        if self.emoji == "😀"{
            detailViewController.emojiDefinition = "Grining face"
        }
        if self.emoji == "😊"{
            detailViewController.emojiDefinition = "Smiling face while blushing"
        }
        if self.emoji == "☺️"{
            detailViewController.emojiDefinition = "Smiling face while blushing"
        }
        if self.emoji == "😉"{
            detailViewController.emojiDefinition = "Smiling face with heart-shaped eyes"
        }
        if self.emoji == "😘"{
            detailViewController.emojiDefinition = "Face throwing a kiss"
        }
        if self.emoji == "😚"{
            detailViewController.emojiDefinition = "Kissing face with closed eyes while blushing"
        }
        if self.emoji == "😗"{
            detailViewController.emojiDefinition = "Kssing face"
        }
        if self.emoji == "😙"{
            detailViewController.emojiDefinition = "Kissing face with smiling eyes"
        }
        if self.emoji == "😜"{
            detailViewController.emojiDefinition = "Winking face"
        }
        
    }
}