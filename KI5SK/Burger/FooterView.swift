//
//  FooterView.swift
//  KI5SK
//
//  Created by JiHoon K on 12/28/23.
//

import UIKit

class FooterView: UIView {
    let burgerVC: BurgerViewController
    
    @IBOutlet var totalCost: UILabel!
    @IBOutlet var tableView: UITableView!
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
        tableView.dataSource = self
    }
}

extension FooterView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCart.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension FooterView {
    @IBAction func orderButton(_ sender: UIButton) {
        
    }
}
