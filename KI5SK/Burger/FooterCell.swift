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
    
    var data: Menu?
    var tapAction: ((OperType) -> ())?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
//        menuTitle.text
        
        menuTitle.text = data?.name
        optionsTitle.text = "optionsTitleTest"
        numberTitle.text = "\(data?.number ?? 1)"
        priceTitle.text = ModelManage.shared.formatPrice(ModelManage.shared.getPriceOf(menu: data!))
    }

}

extension FooterCell {
    
    @IBAction func addByOne(_ sender: UIButton) {
        tapAction!(.add)
    }
    
    @IBAction func subByOne(_ sender: UIButton) {
        tapAction!(.sub)
    }
    
    enum OperType {
        case sub, add
    }
}
