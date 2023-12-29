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
    
    //MARK: 음료 메뉴 생성
    var beverageMenu: [Menu] = []
    
    var coke = Menu(
        name: "COKE",
        photo: "COKE",
        price: 2000,
        category: .beverage
    )
    var cider = Menu(
        name: "CIDER",
        photo: "CIDER",
        price: 2000,
        category: .beverage
    )
    var shake = Menu(
        name: "SHAKE",
        photo: "SHAKE",
        price: 3000,
        category: .beverage
    )
    
    func setup() {
        beverageMenu = [coke, cider, shake]
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
