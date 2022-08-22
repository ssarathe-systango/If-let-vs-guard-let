//
//  ViewController.swift
//  If Let vs Guard Let
//
//  Created by macmini01 on 22/08/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAge: UITextField!
    @IBOutlet weak var txtCity: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func saveButton(_ sender: Any) {
        
        //MARK: USING IF LET
        if let name = txtName.text, !name.isEmpty {
            if let age = txtAge.text, !age.isEmpty {
                if let city = txtCity.text, !city.isEmpty {
                    if let address = txtAddress.text, !address.isEmpty {
                        print("name: \(name), age: \(age), city: \(city), address: \(address)")
                    } else {
                        print("address is empty")
                    }
                } else {
                    print("city is empty")
                }
            } else {
                print("age is empty")
            }
        } else {
            print("Name is empty")
        }
        
        //MARK: USING GUARD LET
        guard let name = txtName.text, !name.isEmpty else {
            print("First name is empty!")
            return
        }

        guard let age = txtAge.text, !age.isEmpty else {
            print("Age is empty!")
            return
        }

        guard let city = txtCity.text, !city.isEmpty else {
            print("City is empty!")
            return
        }

        guard let address = txtAddress.text, !address.isEmpty else {
            print("Address is empty!")
            return
        }
        print("name: \(name), age: \(age), city: \(city), address: \(address)")
    }
}

/*
 * Important difference between guard let and if let :- Guard let and if let is used for handle the nil values and also prevents app crashes.
 
     * 1. both are used for handle the nil values and it also prevents app crashes.
     * 2. What ever the code we write below guard let will not ever execute because, guard statement used return. so below code will not execute. but in if let below code will also execute after executing else block of it.
     * 3. what ever the variable we are taking with if let, will only accessible in if block scope. but the variable we are taking with guard let will also accessible outside scope of guard let.
 */
