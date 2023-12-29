//
//  BeverageCollectionViewCell.swift
//  KI5SK
//
//  Created by TeamSpaFiveTeam on 2023/12/27.
//

import UIKit

class BeverageCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "cell"
    
    //MARK: cell 컴포넌트 Outlet 선언
    @IBOutlet weak var BeverageMenuImageView: UIImageView!
    @IBOutlet weak var BeverageMenuNameLable: UILabel!
    @IBOutlet weak var BeverageMenuPriceLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
