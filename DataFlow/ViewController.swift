//
//  ViewController.swift
//  DataFlow
//
//  Created by Arnold Tjiawi on 16/05/19.
//  Copyright © 2019 ArnoldTjiawi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var phoneTF: UITextField!
    @IBOutlet weak var usernameTF: UITextField!
    
    @IBAction func registerPressed(_ sender: Any) {
        if usernameTF.text == "" || phoneTF.text == ""{
            let alert = UIAlertController(title: "Unfinish", message: "All Text Field must be filled", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default) { (alertAction) in
                alert.dismiss(animated: true, completion: nil)
            }
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        } else{
            performSegue(withIdentifier:
                "toControlRegister", sender: self)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let destination = segue.destination as? ConfirmViewController{destination.username = usernameTF.text
            
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    usernameTF.delegate = self
    phoneTF.delegate = self
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == usernameTF{
            phoneTF.becomeFirstResponder()
        }else if textField == phoneTF{
            textField.resignFirstResponder()
        }
        return true
    }
}
