////
////  AlertLogin.swift
////  SideMenu
////
////  Created by Noman Umar on 7/26/19.
////  Copyright © 2019 Noman Umar. All rights reserved.
////
//
//import Foundation
//import UIKit
//
//
//func AlertLogin (myNav:UINavigationController,present:UIViewController) {
//    
//    
//    
//    let alert = UIAlertController(title: "Login Required!", message: "Login to Add Wish List", preferredStyle: .alert)
//    
//    alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
//    alert.addAction(UIAlertAction(title: "Login Now", style: .default, handler: { action in
//        
//        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
//        
//        
//        
//        myNav.pushViewController(vc, animated: true)
//        
//    }))
//    
//    DispatchQueue.main.async {
//        present.present(alert, animated: true)
//   
//    }
//}
//
//
//
//
//func AlertWithMsg(myNav:UINavigationController,present:UIViewController ,msg :String) {
//    
//    
//    
//    let alert = UIAlertController(title: "Login Required!", message: msg, preferredStyle: .alert)
//    
//    alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
//    alert.addAction(UIAlertAction(title: "Login Now", style: .default, handler: { action in
//        
//        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
//        
//        
//        
//        myNav.pushViewController(vc, animated: true)
//        
//    }))
//    
//    DispatchQueue.main.async {
//        present.present(alert, animated: true)
//    }
//}
//
//func AlertLoginForFav (myNav:UINavigationController,present:UIViewController) {
//    
//    
//    
//    let alert = UIAlertController(title: "Login Required!", message: "You need to login first to add favourite", preferredStyle: .alert)
//    
//    
//    
//    alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
//    alert.addAction(UIAlertAction(title: "Login Now", style: .default, handler: { action in
//        
//        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
//        
//        
//        myNav.pushViewController(vc, animated: true)
//        
//    }))
//    
//    DispatchQueue.main.async {
//        present.present(alert, animated: true)
//    }
//}
//
//
//
//func movProductDetailViewController(nav:UINavigationController , id:String , isCameFrom:Bool) {
//    
//    let mainStoryBoard  = UIStoryboard(name: "Main", bundle: nil)
//    let descriptionVC =  mainStoryBoard .instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
//    
//    
//    
//    
//    nav.pushViewController(descriptionVC, animated: true)
//    
//}
//
//func movProductDetailForFavViewController(nav:UINavigationController , id:String , isCameFrom:Bool,isFav:Bool) {
//    
//    let mainStoryBoard  = UIStoryboard(name: "Main", bundle: nil)
//    let descriptionVC =  mainStoryBoard .instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
//    
//
//    
//    
//    nav.pushViewController(descriptionVC, animated: true)
//    
//}
//
//
//
//func AlertLoginMsg(myNav:UINavigationController,present:UIViewController,msg:String) {
//    
//    
//    
//    let alert = UIAlertController(title: "Login Required!", message: msg, preferredStyle: .alert)
//    
//    alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
//    alert.addAction(UIAlertAction(title: "Login Now", style: .default, handler: { action in
//        
//        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
//        
//        myNav.pushViewController(vc, animated: true)
//        
//    }))
//    
//    DispatchQueue.main.async {
//        present.present(alert, animated: true)
//    }
//}
//
//
//func AlertSuccessGotoBack (myNav:UINavigationController,present:UIViewController , msg:String) {
//    
//    
//    
//    let alert = UIAlertController(title: "Success!", message: msg , preferredStyle: .alert)
//    
//    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
//        
// 
//        
//        
//        
//        myNav.popViewController(animated: false)
//        
//    }))
//    
//    DispatchQueue.main.async {
//        present.present(alert, animated: true)
//   
//    }
//}
