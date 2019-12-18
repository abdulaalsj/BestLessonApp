//
//  RegisterViewController.swift
//  BestLessonApp
//
//  Created by Sumer Abdulaal on 12/11/19.
//  Copyright © 2019 Sumer Abdulaal. All rights reserved.
//

import UIKit
import Firebase



class RegisterViewController: UIViewController {
    @IBOutlet weak var registerEmailField: UITextField!
    
    @IBOutlet weak var registerPasswordField: UITextField!
    
    
    @IBAction func registerPressed(_ sender: Any) {
        if  let email = registerEmailField.text, let password = registerPasswordField.text  {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error  {
                    print(e.localizedDescription)
                } else {
                    //navigate  to chatViewController
                    self.performSegue(withIdentifier: K.registerToOptionsIdentifier, sender: self)
                }
        }

        
          
        }
    }
    
    
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
