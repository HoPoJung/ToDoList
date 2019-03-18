//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Po-Jung Ho on 2019/3/18.
//  Copyright © 2019 Po-Jung Ho. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var textField: UITextField!
    @IBAction func add(_ sender: Any) {
        let itemsObject = UserDefaults.standard.object(forKey: "items")
        var items = [String]()
        
        items.append(textField.text!)
        
        UserDefaults.standard.set(items, forKey: "items")
        
    }
    
    override func resignFirstResponder() -> Bool {
        textField.
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

