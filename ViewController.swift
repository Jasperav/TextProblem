//
//  ViewController.swift
//  UIKitTest
//
//  Created by Jasper Visser on 05/03/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let emptyCharacter = "‏‏‎ "
        let whitespacesAndEmptyCharacter = "        " + emptyCharacter
        
        label.text = "TEST TEST TEST TEST TEST" + whitespacesAndEmptyCharacter
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.label.text = "TEST\nTEST" + whitespacesAndEmptyCharacter
        }
    }
}

