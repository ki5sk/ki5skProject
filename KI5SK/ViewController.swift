//
//  ViewController.swift
//  KI5SK
//
//  Created by woonKim on 2023/12/27.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var hamburgerBtn: UIButton!
    @IBOutlet weak var beverageBtn: UIButton!
    @IBOutlet weak var dessertBtn: UIButton!
    
    @IBOutlet weak var footerView: UIView!
    @IBOutlet weak var orderBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hamburgerBtn.layer.cornerRadius = 16
        hamburgerBtn.backgroundColor = .systemGray
        hamburgerBtn.titleLabel?.textColor = .white
        
        beverageBtn.layer.cornerRadius = 16
        beverageBtn.layer.borderWidth = 1
        beverageBtn.layer.borderColor = UIColor.systemGray.cgColor
        
        dessertBtn.layer.cornerRadius = 16
        dessertBtn.layer.borderWidth = 1
        dessertBtn.layer.borderColor = UIColor.systemGray.cgColor
        
        orderBtn.layer.cornerRadius = 8
        orderBtn.titleLabel?.textColor = .white
    }

    
    
    @IBAction func orderBtn(_ sender: Any) {
        
        
    }
}

