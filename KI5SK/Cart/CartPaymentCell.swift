//
//  CartCellViewController.swift
//  KI5SK
//
//  Created by JiHoon K on 12/29/23.
//

import UIKit

class CartPaymentCell: UITableViewCell {
    @IBOutlet weak var imageTitle: UIImageView!
    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var optionsTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension CartPaymentCell {
    @IBAction func subByOne(_ sender: UIButton) {
    }
    @IBAction func addByOne(_ sender: UIButton) {
    }
}
