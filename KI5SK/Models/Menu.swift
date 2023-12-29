//
//  Menu.swift
//  KI5SK
//
//  Created by JiHoon K on 12/28/23.
//

import Foundation

//MARK: 구조체
//메뉴 구조체
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

//싱글 옵션 구조체
struct SingleOption {
    let title: String
    var items: [(name: String, price: Int)]
    var selected: Int
}

//멀티 옵션 구조체
struct MultiOption {
    let title: String
    var items: [(name: String, price: Int, isSelected: Bool)]
}

struct MenuData {
    
    //MARK: 인스턴스 생성
    //싱글 옵션 인스턴스
    var frenchFrieOption = SingleOption(
        title: "후렌치 후라이",
        items: [(name: "M", price: 0),
                (name: "L", price: 500)],
        selected: 0
    )
    var BeverageOption = SingleOption(
        title: "음료",
        items: [
            (name: "콜라 제로M", price: 0),
            (name: "콜라 제로L", price: 500),
            (name: "사이다 제로M", price: 0),
            (name: "사이다 제로L", price: 500)
        ],
        selected: 0
    )
    
    //멀티 옵션 인스턴스
    var extraMenuOption = MultiOption(
        title: "추가 메뉴",
        items: [
            (name: "치킨 너겟", price: 1500, isSelected: false),
            (name: "치킨 텐더", price: 3000, isSelected: false),
            (name: "애플 파이", price: 2500, isSelected: false),
            (name: "해쉬 브라운", price: 2000, isSelected: false),
            (name: "치즈 스틱", price: 1500, isSelected: false)
        ])
    
    //MARK: 카테고리별 메뉴 인스턴스 생성
    //버거 메뉴 인스턴스 생성
    //옵션 인스턴스 생성 이후 이루어져야 함으로 lazy 키워드 사용
    lazy var bigmacSet = Menu(
        name: "BIGMAC SET",
        photo: "BIGMAC SET",
        price: 10000,
        singleOption: [frenchFrieOption, BeverageOption],
        multiOption: [extraMenuOption],
        category: .burger
    )
    lazy var mediummacSet = Menu(
        name: "MEDIUMMAC SET",
        photo: "MEDIUMMAC SET",
        price: 9000,
        singleOption: [frenchFrieOption, BeverageOption],
        multiOption: [extraMenuOption],
        category: .burger
    )
    lazy var smallmacSet = Menu(
        name: "SMALLMAC SET",
        photo: "SMALLMAC SET",
        price: 8000,
        singleOption: [frenchFrieOption, BeverageOption],
        multiOption: [extraMenuOption],
        category: .burger
    )
    
    //음료 메뉴 인스턴스 생성
    lazy var coke = Menu(
        name: "COKE",
        photo: "COKE",
        price: 2000,
        category: .beverage
    )
    lazy var cider = Menu(
        name: "CIDER",
        photo: "CIDER",
        price: 2000,
        category: .beverage
    )
    lazy var shake = Menu(
        name: "SHAKE",
        photo: "SHAKE",
        price: 3000,
        category: .beverage
    )
    
    //디저트 메뉴 인스턴스 생성
    lazy var pie = Menu(
        name: "PIE",
        photo: "PIE",
        price: 2000,
        category: .side
    )
    lazy var cookie = Menu(
        name: "COOKIE",
        photo: "COOKIE",
        price: 2500,
        category: .side
    )
    lazy var icecream = Menu(
        name: "ICECREAM",
        photo: "ICECREAM",
        price: 1500,
        category: .side
    )
    
    //MARK: 메뉴 배열 생성
    var bugerMenu: [Menu] = []
    var beverageMenu: [Menu] = []
    var dessertMenu: [Menu] = []
    
    //MARK: 카테고리별 메뉴 인스턴스 배열에 추가
    mutating func setMenu() {
        bugerMenu = [bigmacSet, mediummacSet, smallmacSet]
        beverageMenu = [coke, cider, shake]
        dessertMenu = [pie, cookie, icecream]
    }
    
}
