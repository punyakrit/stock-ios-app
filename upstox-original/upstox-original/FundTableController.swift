//
//  FundTableController.swift
//  upstox-original
//
//  Created by Punyakrit Singh Makhni on 08/11/23.
//

import UIKit

class FundTableController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var mutualFunds:[String] = ["Small Cal Fund", "ICICI Fund", "Tata Digital Fund","HDFC Fund","Tax Saver Fund"]
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mutualFunds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellobj = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cellobj.textLabel?.text = mutualFunds[indexPath.row]
        return cellobj
    }
    var str : String!
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        str = mutualFunds[indexPath.row]
        let alert = UIAlertController(title: "Mutual Funds added", message: str, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Successfully!", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    

  

}

    

   
    
    

