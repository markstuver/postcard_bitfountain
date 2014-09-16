//
//  ViewController.swift
//  postcard bitfountain
//
//  Created by Mark Stuver on 9/13/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterAMessageTextField: UITextField!
    
    @IBOutlet weak var mailButtonLabel: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButton(sender: UIButton) {
        
        // In Storyboard, messageLabel is hidden, the .hidden property used below allows you to "unhide" the label when the button is pressed.
        messageLabel.hidden = false
        
        // set label to the text entered into the enterAMessage text field
        messageLabel.text = enterAMessageTextField.text
        
        // clear text in the textField
        enterAMessageTextField.text = ""
        
        // close/hide keyboard by calling the resignFirstResponder function
        enterAMessageTextField.resignFirstResponder()
        
        messageLabel.textColor = UIColor.redColor()
        
        
// Challenge #1
        
        // unhide nameLabel
        nameLabel.hidden = false
        
        // update nameLabel with data entered into enterNameTextField
        nameLabel.text = enterNameTextField.text
        
        // change color of nameLabel's text to blue
        nameLabel.textColor = UIColor.blueColor()
        
        // clear nameLabel once button is pressed
        enterNameTextField.text = ""
    
        // dismiss keyboard
       enterNameTextField.resignFirstResponder()
        

        
        // Set the button's label to Mail Sent when button is pressed
        mailButtonLabel.setTitle("Mail Sent", forState: UIControlState.Normal);
        
        
        
        
    }

}

