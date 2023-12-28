//
//  DessertViewController.swift
//  KI5SK
//
//  Created by TeamSpaFiveTeam on 2023/12/28.
//

import UIKit

class DessertViewController: UIViewController {

    @IBOutlet weak var hamburgerBtn: UIButton!
    @IBOutlet weak var beverageBtn: UIButton!
    @IBOutlet weak var dessertBtn: UIButton!
    @IBOutlet weak var dessertCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hamburgerBtn.layer.cornerRadius = 16
        hamburgerBtn.layer.borderWidth = 1
        hamburgerBtn.layer.borderColor = UIColor.systemGray.cgColor
        
        beverageBtn.layer.cornerRadius = 16
        beverageBtn.layer.borderWidth = 1
        beverageBtn.layer.borderColor = UIColor.systemGray.cgColor
        
        dessertBtn.layer.cornerRadius = 16
        dessertBtn.backgroundColor = .systemGray

        dessertCollectionView.delegate = self
        dessertCollectionView.dataSource = self
        dessertCollectionView.register(DessertCollectionViewCell.self, forCellWithReuseIdentifier: DessertCollectionViewCell.identifier)
        dessertCollectionView.collectionViewLayout = createLayout()
    }
    
    @IBAction func hamburgerMenuBtn(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Burger", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "BurgerViewController") as UIViewController
        
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: false, completion: nil)
    }
    
    @IBAction func beverageMenuBtn(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Beverage", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "BeverageViewController") as UIViewController
        
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: false, completion: nil)
    }
    
    // 컬렉션뷰 셀 레이아웃
    func createLayout() -> UICollectionViewCompositionalLayout {
        
        // item
        let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension: .fractionalHeight(1)))
        
        item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 8, bottom: 16, trailing: 8)
        
        // Group
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.4)), subitem: item, count: 2)

        
        // Section
        let section = NSCollectionLayoutSection(group: group)
        
        section.contentInsets = NSDirectionalEdgeInsets(top: 16, leading: 8, bottom: 8, trailing: 8)
        
        return UICollectionViewCompositionalLayout(section: section)
    }
}

extension DessertViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        // 메뉴 옵션 모달 띄우기
        let storyboard = UIStoryboard(name: "DetailOption", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DetailOptionViewController") as UIViewController
        
        present(vc, animated: true, completion: nil)
    }
}

extension DessertViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DessertCollectionViewCell.identifier, for: indexPath) as! DessertCollectionViewCell
        
        // 셀 색상
        cell.backgroundColor = .systemGreen
        cell.layer.cornerRadius = 16
        
        return cell
    }
}
