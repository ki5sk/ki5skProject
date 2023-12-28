//
//  BurgerCollectionViewCell.swift
//  KI5SK
//
//  Created by TeamSpaFiveTeam on 2023/12/27.
//

import UIKit

class BurgerCollectionViewCell: UICollectionViewCell {
    
    //MARK: cell 컴포넌트 Outlet 선언
    @IBOutlet weak var BugerMenuImageView: UIImageView!
    @IBOutlet weak var BugerMenuNameLable: UILabel!
    @IBOutlet weak var BugerMenuPriceLable: UILabel!
    
    //MARK: 버거 메뉴 생성
    var bugerMenu: [Menu] = []
    
    var bigMac = Menu(
        name: "bigMac",
        photo: "bigMac",
        price: 10000,
        category: .burger
    )
    var mediumMac = Menu(
        name: "mediumMac",
        photo: "mediumMac",
        price: 9000,
        category: .burger
    )
    var smallMac = Menu(
        name: "smallMac",
        photo: "smallMac",
        price: 8000,
        category: .burger
    )
    
    func setup() {
        bugerMenu = [bigMac, mediumMac, smallMac]
    }

    
    static let identifier = "cell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
