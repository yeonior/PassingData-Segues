//
//  ViewController.swift
//  PassingData-Segues
//
//  Created by Ruslan on 18.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard case let vc as SecondViewController = segue.destination else { return }
        
        // 1st -> 2nd
        vc.someText = myLabel.text
    }
    
    @IBAction func unwindToFirstVC(_ unwindSegue: UIStoryboardSegue) {
        // empty
    }
}

