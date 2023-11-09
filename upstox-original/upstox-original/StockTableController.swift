//
//  StockTableController.swift
//  upstox-original
//
//  Created by Punyakrit Singh Makhni on 08/11/23.
//

import UIKit

class StockTableController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var stocks:[String] = ["Adani", "SBI", "Tata Motors","Reliance","TCS"]
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stocks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellobj = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cellobj.textLabel?.text = stocks[indexPath.row]
        return cellobj
    }
    var str : String!
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        str = stocks[indexPath.row]
        let alert = UIAlertController(title: "Stocks added", message: str, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Successfully!", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    

  

}
