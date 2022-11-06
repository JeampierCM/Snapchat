//
//  ViewController.swift
//  Snapchat
//
//  Created by jeampier on 11/6/22.
//  Copyright © 2022 miempresa. All rights reserved.
//

import UIKit

import FirebaseAuth

class iniciarSesionViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func IniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!,password: passwordTextField.text!) {(user,error) in
            print("Intentanto iniciar Sesion")
            if error != nil{
                print("Se presento el siguiente error: \(error)")
            }else{
                print("Inicio de sesion exitoso")
            }
        }
    }
    
}

