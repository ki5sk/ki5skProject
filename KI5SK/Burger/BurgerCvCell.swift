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
    
    //MARK: 버거 메뉴 생성
    var bugerMenu: [Menu] = []
    
    var bigMac = Menu(
        name: "BIGMAC",
        photo: "BIGMAC",
        price: 10000,
        category: .burger
    )
    var mediumMac = Menu(
        name: "MEDIUMMAC",
        photo: "MEDIUMMAC",
        price: 9000,
        category: .burger
    )
    var smallMac = Menu(
        name: "SMALLMAC",
        photo: "SMALLMAC",
        price: 8000,
        category: .burger
    )
    
    func setup() {
        bugerMenu = [bigMac, mediumMac, smallMac]
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
