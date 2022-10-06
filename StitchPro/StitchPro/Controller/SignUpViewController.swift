//
//  SignUpViewController.swift
//  StitchPro
//
//  Created by Furi on 30/09/2022.
//

import UIKit

class SignUpViewController: UIViewController {
    
    
    //MARK: Outlets
    @IBOutlet weak var fulNameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var phoneField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    
    //MARK: ViewController Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    //MARK: IBActions
    @IBAction func signUpButton(_ sender: Any) {
        let storyboard = UIStoryboard(name:"Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func loginButton(_ sender: Any) {
        let storyboard = UIStoryboard(name:"Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.popViewController(animated: true)
    }
}
