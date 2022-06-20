//
//  SecondViewController.swift
//  PassingData-Segues
//
//  Created by Ruslan on 18.02.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    var someText: String?

    @IBOutlet weak var myTextField: UITextField! {
        didSet {
            myTextField.text = someText
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard case let vc as ViewController = segue.destination else { return }
        guard let text = myTextField.text, text != "" else { return }
        
        // 2nd -> 1st
        vc.myLabel.text = text
    }
}
