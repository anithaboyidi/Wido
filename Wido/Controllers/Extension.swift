//
//  Extension.swift
//  Wido
//
//  Created by wido technologies on 10/06/22.
//

import Foundation
import UIKit
extension UIViewController {
    func hideKeyBoard() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap)
                                         
    }
    
    
    @objc func dismissKeyboard() {
        self.view.endEditing(true)
        
    }
}
