//
//  FooterCell.swift
//  KI5SK
//
//  Created by JiHoon K on 12/29/23.
//

import UIKit

class FooterCell: UITableViewCell {
    @IBOutlet weak var menuTitle: UILabel!
    @IBOutlet weak var optionsTitle: UILabel!
    @IBOutlet var numberTitle: UILabel!
    @IBOutlet var priceTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension FooterCell {
    @IBAction func subByOne(_ sender: UIButton) {
        
    }
    @IBAction func addByOne(_ sender: UIButton) {
        
    }
}
