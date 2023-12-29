//
//  BurgerCollectionViewCell.swift
//  KI5SK
//
//  Created by TeamSpaFiveTeam on 2023/12/27.
//

import UIKit

class BurgerCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "cell"
    
    //MARK: cell 컴포넌트 Outlet 선언
    @IBOutlet weak var BugerMenuImageView: UIImageView!
    @IBOutlet weak var BugerMenuNameLable: UILabel!
    @IBOutlet weak var BugerMenuPriceLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
