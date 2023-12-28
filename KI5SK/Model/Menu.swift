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
    var singleOption: [(item: (title: String, price: Int), isSelected: Bool)]?
    var multiOption: [(item: (title: String, price: Int), isSelected: Bool)]?
    var category: Category
    
    enum Category {
        case burger, beverage, side
    }
}
