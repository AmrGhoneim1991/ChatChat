//
//  ViewController.swift
//  ChatChat
//
//  Created by amr ahmed abdel hamied on 6/14/20.
//  Copyright © 2020 amr ahmed abdel hamied. All rights reserved.
//

import UIKit


class WelcomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func LoginTapped(_ sender: UIButton) {
        goTo(identifier: "LoginVC")
    }
    
    @IBAction func RegisterTapped(_ sender: UIButton) {
        goTo(identifier: "RegisterVC")
    }
}

