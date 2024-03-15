//
//  ViewController.swift
//  YourRecipe
//
//  Created by Timur on 3/10/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var ingredientsList: UILabel!
    var ingredientsArray: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        searchTextField?.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let ingredient = searchTextField.text!
        ingredientsArray.append(ingredient)
        searchTextField.text = ""
        ingredientsList.text = ingredientsArray.joined(separator: " \n")
        print(ingredientsArray)
        
        return true
    }

    @IBAction func addButtonPressed(_ sender: UIButton) {
        searchTextField.endEditing(true)
        let ingredient = searchTextField.text!
        ingredientsArray.append(ingredient)
        searchTextField.text = ""
        ingredientsList.text = ingredientsArray.joined(separator: " \n")
    }
    
}
