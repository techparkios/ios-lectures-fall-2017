//
//  SecondViewController.swift
//  e02
//
//  Created by Gennady Evstratov on 9/27/17.
//

import UIKit

class SecondViewController: UIViewController {

    var text: String?
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        label.text = text
    }

}
