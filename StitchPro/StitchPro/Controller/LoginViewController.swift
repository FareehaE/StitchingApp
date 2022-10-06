//
//  LoginViewController.swift
//  StitchPro
//
//  Created by Furi on 30/09/2022.
//

import UIKit
import KYDrawerController

class LoginViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    //MARK: ViewController lifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK: Functions
    func delegates(){
        
    }
    
    //MARK: IBActions
    @IBAction func loginButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main",bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "KYDrawerController") as! KYDrawerController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func registerButton(_ sender: Any) {
        let storyboard = UIStoryboard(name:"Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
