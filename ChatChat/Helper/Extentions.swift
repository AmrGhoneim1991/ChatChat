//
//  Extentions.swift
//  ChatChat
//
//  Created by amr ahmed abdel hamied on 6/15/20.
//  Copyright © 2020 amr ahmed abdel hamied. All rights reserved.
//

import UIKit

extension UIViewController {
           func goTo (identifier : String) {
           let storyboard = UIStoryboard(name: "Main", bundle: nil)
           let destVC = storyboard.instantiateViewController(withIdentifier: identifier)
           self.navigationController?.pushViewController(destVC, animated: true)
       }
}
