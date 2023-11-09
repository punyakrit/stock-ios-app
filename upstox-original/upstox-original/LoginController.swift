//
//  LoginController.swift
//  upstox-original
//
//  Created by Punyakrit Singh Makhni on 08/11/23.
//

import UIKit

class LoginController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBOutlet weak var nameTxt: UITextField!
    
    @IBOutlet weak var emailTxt: UITextField!
    
    
    
    @IBOutlet weak var passwordTxt: UITextField!
    
    @IBAction func registerBtn(_ sender: Any) {
        if nameTxt.text != "" && emailTxt.text != "" && passwordTxt.text != ""  {
            performSegue(withIdentifier: "1st", sender: nil)
        } else {
            let alert = UIAlertController(title: "Error Occured", message: "Enter Credentials", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Try Again", style: .default, handler: nil))
            self.present(alert, animated: true , completion: nil)
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let objdes = segue.destination as! MainController
        objdes.name = nameTxt.text
    }

        
    
        
    

}
