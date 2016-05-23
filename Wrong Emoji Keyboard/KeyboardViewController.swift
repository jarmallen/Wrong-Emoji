//
//  KeyboardViewController.swift
//  Wrong Emoji Keyboard
//
//  Created by Jared Allen on 7/27/15.
//  Copyright (c) 2015 Jared Allen. All rights reserved.
//

import UIKit
import BoxBrowseSDK

class KeyboardViewController: UIInputViewController {
    
    var keyboardView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadInterface()
    }

    func loadInterface() {
        // load the nib file
        let nib = UINib(nibName: "KeyboardView", bundle: nil)
        // instantiate the view
        keyboardView = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        // add the interface to the main view
        self.view.addSubview(keyboardView)
    }
    
    @IBAction func buttonPressed(button: UIButton) {
        var input = ""
        let proxy = textDocumentProxy as! UIKeyInput
        
        switch (button.tag) {
            case 1:
                input = "Oops! Meant to send 😀!! That was awkward... 😬 "
            case 2:
                input = "Oops! Meant to send 😢!! That was awkward... 😬 "
            default:
                input = "If you see this, something went wrong..."
        }
        
        proxy.insertText("\(input)")
    }
    
    @IBAction func nextKeyboardPressed(button: UIButton) {
        advanceToNextInputMode()
    }
   
}
