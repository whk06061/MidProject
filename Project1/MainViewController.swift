//
//  MainViewController.swift
//  Project1
//
//  Created by Mac SWU on 2020/04/29.
//  Copyright © 2020 Mac SWU. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var temperTextField: UITextField!
    @IBOutlet var warningLabel: UILabel!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        warningLabel.isHidden = true
        
        // Do any additional setup after loading the view.
    }
@IBAction func buttonAction(_ sender: UIButton) {
    
    let temp: String? = temperTextField.text
    
    if let value = temp{
        warningLabel.isHidden = true
        let value2: Int? = Int(value)
        if let tempvalue = value2{
            
            if tempvalue >= 28 {
                self.performSegue(withIdentifier: "toTemp28", sender: nil)
            }
            else if tempvalue >= 23{
                self.performSegue(withIdentifier: "toTemp23", sender: nil)
            }
            else if tempvalue >= 20{
                self.performSegue(withIdentifier: "toTemp20", sender: nil)
            }
            else if tempvalue >= 17{
                           self.performSegue(withIdentifier: "toTemp17", sender: nil)
                       }
            else if tempvalue >= 12{
                self.performSegue(withIdentifier: "toTemp12", sender: nil)
            }
            else if tempvalue >= 9{
                self.performSegue(withIdentifier: "toTemp9", sender: nil)
            }
            else if tempvalue >= 5{
                self.performSegue(withIdentifier: "toTemp5", sender: nil)
            }
            else{
                self.performSegue(withIdentifier: "toTempElse", sender: nil)
            }
            
        }
        else{
            warningLabel.isHidden = false
        }
        
    }
    else{
        warningLabel.isHidden = false
    }
    
    }
@IBAction func MyExit(sender: UIStoryboardSegue) {
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
