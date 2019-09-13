//
//  ViewController.swift
//  CumulativeProbability
//
//  Created by macuser on 9/11/19.
//  Copyright © 2019 WSU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var binomialProbability : UILabel?
    
    @IBAction func updateProbability(sender : UITextField) {
        let app = UIApplication.shared.delegate as! AppDelegate
        switch(sender.tag)
        {
        case 0:
            let d = Double(sender.text!)
            if(d != nil){
                app.model.probabilityOfSuccess = d!
            }
            break
        case 1:
            let i = Int(sender.text!)
            if(i != nil){
                app.model.numberOfTrials = i!
            }
            break
        case 2:
            let i = Int(sender.text!)
            if(i != nil){
                app.model.numberOfSuccesses = Int(sender.text!)!
            }
            break
        default:
            break
        }
        app.model.getBinomialProbability()
        binomialProbability?.text = app.model.binomialProbability.description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

