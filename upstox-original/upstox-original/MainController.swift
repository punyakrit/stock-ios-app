//
//  MainController.swift
//  upstox-original
//
//  Created by Punyakrit Singh Makhni on 08/11/23.
//

import UIKit

class MainController: UIViewController {
    
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        namelbl.text = "Welcome \(name!)"
       
    }
    
    @IBOutlet weak var namelbl: UILabel!
    
    @IBAction func stockBtn(_ sender: Any) {
        performSegue(withIdentifier: "stock", sender: nil)
    }
    
    
    @IBAction func fundBtn(_ sender: Any) {
        performSegue(withIdentifier: "fund", sender: nil)
    }
    

}
