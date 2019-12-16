//
//  WelcomeViewController.swift
//  BestLessonApp
//
//  Created by Sumer Abdulaal on 12/11/19.
//  Copyright © 2019 Sumer Abdulaal. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var logIn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = ""
        
        var charIndex = 0.0
        
        let titleText = K.titleText
        
        for letter in titleText {
            
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { (timer) in

                self.titleLabel.text?.append(letter)
            }
            
            charIndex += 1
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
