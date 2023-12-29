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
    
    //MARK: 디저트 메뉴 생성
    var dessertMenu: [Menu] = []
    
    var pie = Menu(
        name: "PIE",
        photo: "PIE",
        price: 2000,
        category: .side
    )
    var cookie = Menu(
        name: "COOKIE",
        photo: "COOKIE",
        price: 2500,
        category: .side
    )
    var icecream = Menu(
        name: "ICECREAM",
        photo: "ICECREAM",
        price: 1500,
        category: .side
    )
    
    func setup() {
        dessertMenu = [pie, cookie, icecream]
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
