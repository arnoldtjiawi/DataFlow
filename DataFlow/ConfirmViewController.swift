//
//  ConfirmViewController.swift
//  DataFlow
//
//  Created by Arnold Tjiawi on 16/05/19.
//  Copyright © 2019 ArnoldTjiawi. All rights reserved.
//

import UIKit

class ConfirmViewController: UIViewController {

    @IBOutlet weak var usernameLabel: UILabel!
    
    var username:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameLabel.text = username
        
        
        
        
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
