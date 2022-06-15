//
//  OtpViewController.swift
//  Wido
//
//  Created by wido technologies on 09/06/22.
//

import Foundation
import UIKit
import OTPTextField



class OtpViewController: UIViewController {
    
  
    @IBOutlet weak var tf1: UITextField!
    @IBOutlet weak var tf2: UITextField!
    @IBOutlet weak var tf3: UITextField!
    @IBOutlet weak var tf4: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var ibresend: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
     
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShowNotification), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHideNotification), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        self.tf1.delegate = self
        self.tf2.delegate = self
        self.tf3.delegate = self
        self.tf4.delegate = self
        
        self.tf1.addTarget(self, action: #selector(self.changeCharacter), for: .editingChanged)
        self.tf2.addTarget(self, action: #selector(self.changeCharacter), for: .editingChanged)
        self.tf3.addTarget(self, action: #selector(self.changeCharacter), for: .editingChanged)
        self.tf4.addTarget(self, action: #selector(self.changeCharacter), for: .editingChanged)
    }

        

    
    
    @objc func changeCharacter(textField : UITextField) {
        
           if textField.text?.utf8.count == 1 {
               switch textField {
               case tf1:
                   tf2.becomeFirstResponder()
               case tf2:
                   tf3.becomeFirstResponder()
               case tf3:
                   tf4.becomeFirstResponder()
               case tf4:
                   print("OTP = \(tf1.text!)\(tf2.text!)\(tf3.text!)\(tf4.text!)")
               default:
                   break
               }
               
           }else if textField.text!.isEmpty {
               switch textField {
               case tf4:
                   tf3.becomeFirstResponder()
               case tf3:
                   tf2.becomeFirstResponder()
               case tf2:
                   tf1.becomeFirstResponder()
               default:
                   break
               }
           }
       }
    @objc func keyboardWillShowNotification(notification :Notification) {
        
    }
    @objc func keyboardWillHideNotification(notification :Notification) {
        
    }
    
    @IBAction func btnOtp(_ sender: Any) {


    let story = UIStoryboard(name: "Main", bundle: nil)
        
    guard let controller = story.instantiateViewController(withIdentifier: "RegNav")  as? RegisterViewController else {
        return
    }
    self.navigationController?.pushViewController(controller, animated: true)
    }
}


extension OtpViewController:UITextFieldDelegate {
    
    func textField(_ textfield:UITextField,shouldChangeCharactersIn range:NSRange, replacementString string:String) -> Bool {
        
        if textfield.text!.utf8.count == 1 && !string.isEmpty {
            return false
        } else {
            return true
        }
    }
}
