//
//  FooterView.swift
//  KI5SK
//
//  Created by JiHoon K on 12/28/23.
//

import UIKit

class FooterViewVC: UIViewController {
    let burgerVC: BurgerViewController
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var totalPrice: UILabel!
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
    }
}

extension FooterViewVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return burgerVC.carts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension FooterViewVC {
    @IBAction func orderButton(_ sender: UIButton) {
        
    }
    
    @IBAction func subByOne(_ sender: UIButton) {
    }
    @IBAction func addByOne(_ sender: UIButton) {
    }
}
