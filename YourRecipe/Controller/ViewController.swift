//
//  ViewController.swift
//  YourRecipe
//
//  Created by Timur on 3/10/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var searchTextField: UITextField!
    var ingredientArray = [""]

    override func viewDidLoad() {
        super.viewDidLoad()
        searchTextField?.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextField.endEditing(true)
        let ingredient = searchTextField.text!
        ingredientArray.append(ingredient)
        print(ingredientArray)
        
        return true
    }

    @IBAction func addButtonPressed(_ sender: UIButton) {
        searchTextField.endEditing(true)
        let ingredient = searchTextField.text!
        ingredientArray.append(ingredient)
        print(ingredientArray)
    }
    
}
