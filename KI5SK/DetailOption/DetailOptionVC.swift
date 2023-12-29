//
//  DetailViewController.swift
//  KI5SK
//
//  Created by TeamSpaFiveTeam on 2023/12/28.
//

import UIKit

class DetailOptionViewController: UIViewController {

    // 이미지, 이름, 가격, 수량
    @IBOutlet weak var menuImage: UIImageView!
    @IBOutlet weak var menuNameLbl: UILabel!
    @IBOutlet weak var menuPriceLbl: UILabel!
    @IBOutlet weak var menuCountLbl: UILabel!

    
    // 후렌치 후라이  싱글옵션
    
    @IBOutlet weak var topOptionLbl: UILabel!
    @IBOutlet weak var singleOption1Lbl: UILabel!
    @IBOutlet weak var singleOption2Lbl: UILabel!
    @IBOutlet weak var singleOption1Btn: UIButton!
    @IBOutlet weak var singleOption2Btn: UIButton!
    
    // 음료 싱글옵션
    
    @IBOutlet weak var middleOptionLbl: UILabel!
    @IBOutlet weak var singleOption3Lbl: UILabel!
    @IBOutlet weak var singleOption4Lbl: UILabel!
    @IBOutlet weak var singleOption5Lbl: UILabel!
    @IBOutlet weak var singleOption6Lbl: UILabel!
    
    @IBOutlet weak var singleOption3Btn: UIButton!
    @IBOutlet weak var singleOption4Btn: UIButton!
    @IBOutlet weak var singleOption5Btn: UIButton!
    @IBOutlet weak var singleOption6Btn: UIButton!
    
    // 추가 메뉴 멀티옵션
    
    @IBOutlet weak var bottomOptionLbl: UILabel!
    @IBOutlet weak var multiOption1Btn: UIButton!
    @IBOutlet weak var multiOption2Btn: UIButton!
    @IBOutlet weak var multiOption3Btn: UIButton!
    @IBOutlet weak var multiOption4Btn: UIButton!
    @IBOutlet weak var multiOption5Btn: UIButton!
    
    // Cart 담기
    @IBOutlet weak var inputCartBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //메뉴 인스턴스 생성
        var selectedMenu = MenuData()
        selectedMenu.setMenu()
        var menu: [Menu] = []
        
        //선택 카테고리 식별
        switch selectedCategory {
        case .burger : menu = selectedMenu.bugerMenu
        case .beverage : menu = selectedMenu.beverageMenu
        case .side : menu = selectedMenu.dessertMenu
        }
        
        //메뉴 이미지, 이름, 가격
        menuImage.image = UIImage(named: menu[selectedIndexPath].name)
        menuNameLbl.text = menu[selectedIndexPath].name
        menuPriceLbl.text = "\(menu[selectedIndexPath].price)원"
        
        //싱글 옵션
        topOptionLbl.text = menu[selectedIndexPath].singleOption?[0].title

//        singleOption1Btn.backgroundImage(for: UIImage(systemName: "checkmark.circle.fill"))
        
        multiOption1Btn.layer.cornerRadius = 16
        multiOption2Btn.layer.cornerRadius = 16
        multiOption3Btn.layer.cornerRadius = 16
        multiOption4Btn.layer.cornerRadius = 16
        multiOption5Btn.layer.cornerRadius = 16
        
    }
    // 마이너스 버튼
    @IBAction func menuMinusBtn(_ sender: Any) {
        if menuCountLbl.text == "1" {
            return
        }
        
        var menuCount = Int(menuCountLbl.text!)!
        menuCount -= 1
        menuCountLbl.text = String(menuCount)
    }
    // 플러스 버튼
    @IBAction func menuPlusBtn(_ sender: Any) {
        
        var menuCount = Int(menuCountLbl.text!)!
        menuCount += 1
        menuCountLbl.text = String(menuCount)
        
    }
    
    }
    



// 버거 , 음료, 디저트
//1. 버거 세트 (후렌치 후라이: M/L , 음료, 추가메뉴)
//2. 버거 (추가 메뉴)
//3. 음료 (사이즈: M/L, 아이스/핫, 디카페인?)
//4. 디저트 (사이즈:후렌치 후라이, 수량: 치즈스틱 등)
