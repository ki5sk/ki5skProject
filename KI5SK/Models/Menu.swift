//
//  Menu.swift
//  KI5SK
//
//  Created by JiHoon K on 12/28/23.
//

import Foundation

struct Menu {
    var name: String
    var photo: String
    var price: Int
    var number = 1
    var singleOption: [SingleOption]?
    var multiOption: [MultiOption]?
    var category: Category
    
    enum Category {
        case burger, beverage, side
    }
}

struct SingleOption {
    let title: String
    var items: [(name: String, price: Int)]
    var selected: Int
}

struct MultiOption {
    let title: String
    var items: [(name: String, price: Int, isSelected: Bool)]
}

/* Example:
 이걸로 디테일 뷰 표현 가능, 디테일 뷰에 이거 넘기면 될 거 같네요.
 
 var shrimpBurger = Menu(name: "새우 버거",
                         photo: "",
                         price: 3200,
                         singleOption: [.init(title: "후렌치 후라이",
                                              items: [("M", 0),
                                                      ("L (+500원)", 500)],
                                              selected: 0),
                                        .init(title: "음료",
                                              items: [("콜라 제로 M", 0),
                                                      ("콜라 제로 L (+500원)", 500),
                                                      ("사이다 제로 M", 0),
                                                      ("사이다 제로 L (+500원)", 500)],
                                              selected: 1)],
                         multiOption: [.init(title: "추가 메뉴",
                                             items: [("치킨 너겟", 1500, true),
                                                     ("치킨 텐더", 1800, false),
                                                     ("애플 파이", 2100, false),
                                                     ("해쉬 브라운", 1800, false),
                                                     ("치즈 스틱", 1500, true)])],
                         category: .burger)

 var hotChoco = Menu(name: "핫 초코",
                     photo: "",
                     price: 1500,
                     singleOption: [.init(title: "사이즈", items: [("S", 0), ("M", 500), ("L", 700)], selected: 0)],
                     category: .beverage)
 */
