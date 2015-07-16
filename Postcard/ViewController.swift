//
//  ViewController.swift
//  Postcard
//
//  Created by Tony Ridgway on 16/05/2015.
//  Copyright (c) 2015 Tony Ridgway. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameEntered: UILabel!
    
    
    @IBOutlet weak var myName: UITextField!
    @IBOutlet weak var myMessageTextField: UITextField!
    
    
    @IBOutlet weak var mailButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPress(sender: UIButton) {
        // code will evaluate when we press the button
          
        
        messageLabel.hidden = false
        messageLabel.text = myMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        nameEntered.hidden = false
        nameEntered.text = myName.text
        nameEntered.textColor = UIColor.blueColor()
        
        myName.text = ""
        myName.resignFirstResponder()
        
        
        myMessageTextField.text = ""
        myMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

