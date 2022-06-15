//
//  ViewController.swift
//  Wido
//
//  Created by wido technologies on 09/06/22.
//

import UIKit
import FirebaseAuth

class PhoneViewController: UIViewController {

    @IBOutlet weak var tfMobile: UITextField!
  
    @IBOutlet weak var btnSend: UIButton!
 
  
    let checkbox = CheckBox(frame: CGRect(x: 60, y: 445, width: 40, height: 200))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyBoard()
        
        view.addSubview(checkbox)
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(didTapCheckbox))
        checkbox.addGestureRecognizer(gesture)
      
        btnSend.addTarget(self, action: #selector(tapForLogin), for: .touchUpInside)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShowNotification), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHideNotification), name: UIResponder.keyboardWillHideNotification, object: nil)
        

        
    }
    @objc func didTapCheckbox() {
        checkbox.toggle()
    }

 
    @objc func tapForLogin() {
        
        if tfMobile.text?.count == 10 {
            
            let story = UIStoryboard(name: "Main", bundle: nil)
            guard let controller = story.instantiateViewController(withIdentifier: "OtpNav")  as? OtpViewController else {
                return
            }
            self.navigationController?.pushViewController(controller, animated: true)
            
        }
        
    }
    
    @objc func keyboardWillShowNotification(notification :Notification) {
        
    }
    @objc func keyboardWillHideNotification(notification :Notification) {
        
    }
    

}


