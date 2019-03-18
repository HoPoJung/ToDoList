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
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func dissmissKeyboard(){
        view.endEditing(true)
    }
    func hideKeyboardWhenTabArround() {
        let tap = UITapGestureRecognizer(target: self.view, action: @selector(self.dissmissKeyboard))
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTabArround()
        
    }


}

