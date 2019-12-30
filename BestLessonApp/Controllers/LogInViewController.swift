//
//  LogInViewController.swift
//  BestLessonApp
//
//  Created by Sumer Abdulaal on 12/11/19.
//  Copyright © 2019 Sumer Abdulaal. All rights reserved.
//

import UIKit
import Firebase

class LogInViewController: UIViewController {
    @IBOutlet weak var logInEmailField: UITextField!
    @IBOutlet weak var logInPasswordField: UITextField!
    
    
    
    @IBAction func logInPressed(_ sender: Any) {
        
        if  let email = logInEmailField.text, let password = logInPasswordField.text {
        
        Auth.auth().signIn(withEmail: email, password: password) {  authResult, error in
          if let e = error {
                              
          let alert = UIAlertController(title: K.errorString, message: e.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                              
                              
                               //  print(e.localizedDescription)
                              
                              
                              alert.addAction(UIAlertAction(title: K.ok, style: UIAlertAction.Style.default, handler: nil))
                              
                              self.present(alert, animated: true, completion: nil)
                              
                              
                             }
             else {
                //navigate  to chatViewController
            self.performSegue(withIdentifier: K.logInToOptionsIdentifier, sender: self)
            }
    }
    
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
