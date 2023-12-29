//
//  FooterView.swift
//  KI5SK
//
//  Created by JiHoon K on 12/28/23.
//

import UIKit

class FooterView: UIView {
    @IBOutlet var totalCost: UILabel!
    @IBOutlet var tableView: UITableView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
//        tableView.dataSource = self
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
    }
}

//extension FooterView: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return data?.count ?? 0
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        
//    }
//}

extension FooterView {
    @IBAction func orderButton(_ sender: UIButton) {
        
    }
}
