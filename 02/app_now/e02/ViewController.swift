//
//  ViewController.swift
//  e02
//
//  Created by Gennady Evstratov on 9/27/17.
//

import UIKit

class ViewController: UIViewController {

    var counter: Int = 0
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "\(counter)"
    }

    @IBAction func buttonPressed(_ sender: Any?) {
        textField.resignFirstResponder()
        
        performSegue(withIdentifier: "id1", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "id1" else {
            return
        }
        
        let secondVC = segue.destination as? SecondViewController
        secondVC?.text = textField.text
    }
}

