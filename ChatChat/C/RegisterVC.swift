//
//  RegisterVC.swift
//  ChatChat
//
//  Created by amr ahmed abdel hamied on 6/15/20.
//  Copyright © 2020 amr ahmed abdel hamied. All rights reserved.
//

import UIKit
import SVProgressHUD
import Firebase

class RegisterVC: UIViewController {

    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func registerTapped(_ sender: UIButton) {
      
        SVProgressHUD.show()
        Auth.auth().createUser(withEmail: emailTF.text!, password: passwordTF.text!) { (user, error) in
            if error != nil {
                print(error)
            }else {
                SVProgressHUD.dismiss()
                self.goTo(identifier: "HomeVC")
            }
        }
        
        
    }
    

}
