//
//  CartCellViewController.swift
//  KI5SK
//
//  Created by JiHoon K on 12/29/23.
//

import UIKit

class CartPaymentCell: UITableViewCell {
    var menu: Menu?
    
    @IBOutlet weak var imageTitle: UIImageView!
    @IBOutlet weak var menuTitle: UILabel!
    @IBOutlet weak var optionsTitle: UILabel!
    @IBOutlet var numberTitle: UILabel!
    @IBOutlet var totalPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        if let menu = menu {
            imageTitle.image = UIImage(named: menu.photo)
            menuTitle.text = menu.name
            numberTitle.text = "\(menu.number)"
            totalPrice.text = ModelManage.shared.formatPrice(ModelManage.shared.getPriceOf(menu: menu))
        }
    }
}

extension CartPaymentCell {
    @IBAction func subByOne(_ sender: UIButton) {
        
    }
    
    @IBAction func addByOne(_ sender: UIButton) {
        
    }
    
    @IBAction func changeOption(_ sender: UIButton) {
        
    }
}
