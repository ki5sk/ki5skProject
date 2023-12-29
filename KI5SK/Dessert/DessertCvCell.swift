//
//  DessertCollectionViewCell.swift
//  KI5SK
//
//  Created by TeamSpaFiveTeam on 2023/12/28.
//

import UIKit

class DessertCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "cell"
    
    //MARK: cell 컴포넌트 Outlet 선언
    @IBOutlet weak var DessertMenuImageView: UIImageView!
    @IBOutlet weak var DessertMenuNameLable: UILabel!
    @IBOutlet weak var DessertMenuPriceLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
