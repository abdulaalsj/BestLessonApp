//
//  OptionsViewController.swift
//  BestLessonApp
//
//  Created by Sumer Abdulaal on 12/11/19.
//  Copyright © 2019 Sumer Abdulaal. All rights reserved.
//

import UIKit
import Firebase

class OptionsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = K.titleText
        
        navigationItem.hidesBackButton = true

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func GamesPressed(_ sender: UIButton) {
        performSegue(withIdentifier: K.optionsToGame, sender: self)
    }
    
    
    
    @IBAction func LessonsPressed(_ sender: UIButton) {
        performSegue(withIdentifier: K.optionsToLesson, sender: self)
    }
    
    
    
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {


        do {
          try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
          print ("Error signing out: %@", signOutError)
        }
        
    }
    
}
