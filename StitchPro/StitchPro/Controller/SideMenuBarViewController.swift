//
//  SideMenuBarViewController.swift
//  StitchPro
//
//  Created by Furi on 03/10/2022.
//

import UIKit
import KYDrawerController

class SideMenuBarViewController: UIViewController {

    //MARK: ViewController lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnProfile(_ sender: UIButton){
        let drawer = self.navigationController?.parent as! KYDrawerController
        drawer.setDrawerState(.closed, animated: true)
        let mainVC = (drawer.mainViewController as! UINavigationController).topViewController as! HomeViewController
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
        mainVC.navigationController?.pushViewController(vc, animated: true)
        
//        let drawer = self.navigationController?.parent as! KYDrawerController
//       drawer.setDrawerState(.closed, animated: true)
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc =  storyboard.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
//        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func btnAbout(_ sender: UIButton){
        let drawer = self.navigationController?.parent as! KYDrawerController
        drawer.setDrawerState(.closed, animated: true)
        drawer.setDrawerState(.closed, animated: true)
        let mainVC = (drawer.mainViewController as! UINavigationController).topViewController as! HomeViewController
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "WhyStitchProViewController") as! WhyStitchProViewController
        mainVC.navigationController?.pushViewController(vc, animated: true)
        
    }

   
}
