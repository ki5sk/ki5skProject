//
//  ViewController.swift
//  KI5SK
//
//  Created by woonKim on 2023/12/27.
//

import UIKit

class BurgerViewController: UIViewController {
    
    @IBOutlet weak var hamburgerBtn: UIButton!
    @IBOutlet weak var beverageBtn: UIButton!
    @IBOutlet weak var dessertBtn: UIButton!
    @IBOutlet weak var burgerCollectionView: UICollectionView!
    @IBOutlet weak var footerView: UIView!
    @IBOutlet weak var orderBtn: UIButton!
    @IBOutlet weak var callStaff: UILabel!
    
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
        
        burgerCollectionView.delegate = self
        burgerCollectionView.dataSource = self
        burgerCollectionView.register(BurgerCollectionViewCell.self, forCellWithReuseIdentifier: BurgerCollectionViewCell.identifier)
        burgerCollectionView.collectionViewLayout = createLayout()
        
        // 직원호출 탭 제스쳐 추가
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(callStaffTap(sender:)))
        callStaff.addGestureRecognizer(tapGesture)
        
        orderBtn.layer.cornerRadius = 8
        orderBtn.titleLabel?.textColor = .white
    }
    
    func createLayout() -> UICollectionViewCompositionalLayout {
        
        // item
        let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.85)))
        
        item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 6, trailing: 11.5)
        
        // Group
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .absolute(500), heightDimension: .fractionalHeight(1)), subitem: item, count: 2)
        
        // Section
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 18, bottom: 0, trailing: 7)
        
        // return
        return UICollectionViewCompositionalLayout(section: section)
    }

    // 직원호출 액션
    @objc func callStaffTap(sender: UITapGestureRecognizer) {
            
    }

    // 주문 버튼 액션
    @IBAction func orderBtn(_ sender: Any) {
        
    }
}

extension BurgerViewController: UICollectionViewDelegate {
    
}

extension BurgerViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BurgerCollectionViewCell.identifier, for: indexPath) as! BurgerCollectionViewCell
        
        return cell
    }
}



