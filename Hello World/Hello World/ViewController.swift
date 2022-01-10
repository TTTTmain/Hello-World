//
//  ViewController.swift
//  Hello World
//
//  Created by Timothy Tan on 10/1/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sayHello(_ sender: Any) {
        guard let name = nameField.text, name.isEmpty == false else {
            displayMessage(title: "Error", message: "Please enter a name")
            return
        }
        
        guard let ageText = ageField.text, let age = Int(ageText) else {
            //age could not be established. print error and exit
            displayMessage(title: "Error", message: "Please enter a valid age")
            return
        }
        
        let person = Person(name: name, age: age)
        displayMessage(title: "Greeting", message: person.greeting())
    }
    
    func displayMessage(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alertController.addAction(UIAlertAction(title: "Dissmiss", style: .default, handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
    }
    
}

