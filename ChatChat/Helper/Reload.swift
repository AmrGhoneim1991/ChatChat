//
//  Reload.swift
//  ChatChat
//
//  Created by amr ahmed abdel hamied on 6/15/20.
//  Copyright © 2020 amr ahmed abdel hamied. All rights reserved.
//

import UIKit

extension AppDelegate {
    
    func isLoggedIn() -> Bool {
        
        if let x = UserDefaults.standard.object(forKey: "Logged") as? String {
            if x.isEmpty {
                return false
            }else{
                return true
            }
        }
        else {
            return false
        }
    }
    
    func goToHomeVC() {
        goToHomeVC(window: ad.window!)
    }
    
}





protocol ReloadDelegate {
    func goToHomeVC(window:UIWindow)
}

extension ReloadDelegate {
    
    func goToHomeVC(window:UIWindow) {
        

        let transition: UIView.AnimationOptions = .transitionFlipFromLeft
        let rootviewcontroller: UIWindow = ((UIApplication.shared.delegate?.window)!)!
        let nav1 = UINavigationController()
        nav1.navigationBar.tintColor = #colorLiteral(red: 0.7997059226, green: 0.6618819237, blue: 0.3807252049, alpha: 1)
         
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let WelcomeVC = storyboard.instantiateViewController(withIdentifier :"WelcomeVC") as! WelcomeVC
//        let homeVC = storyboard.instantiateViewController(withIdentifier :"HomeVC") as! HomeVC
        let navController = UINavigationController.init(rootViewController: WelcomeVC )
        navController.navigationItem.backBarButtonItem?.title = ""
        
        
        if let delegate = UIApplication.shared.connectedScenes.first?.delegate {
            if let window = (delegate as? SceneDelegate)?.window {
                window.rootViewController =  navController
                window.makeKeyAndVisible()

            }

        }
        else {
            rootviewcontroller.rootViewController =  navController
            rootviewcontroller.makeKeyAndVisible()
        }

        let mainwindow = (UIApplication.shared.delegate?.window!)!
        UIView.transition(with: mainwindow, duration: 0.55001, options: transition, animations: { () -> Void in
        }) { (finished) -> Void in
            
            
        }
    }
}
