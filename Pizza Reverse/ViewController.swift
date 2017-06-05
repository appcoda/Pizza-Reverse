//
//  ViewController.swift
//  Pizza Reverse
//
//  Created by Simon Ng on 5/6/2017.
//  Code written by Jayven Nhan
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit
import Intents

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        INPreferences.requestSiriAuthorization { (status) in
            
        }
        
        INVocabulary.shared().setVocabularyStrings(["push up", "sit up", "pull up"], of: .workoutActivityName)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
