//
//  BeverageViewController.swift
//  KI5SK
//
//  Created by woonKim on 2023/12/27.
//

import UIKit

class BeverageViewController: UIViewController {
    
    @IBOutlet weak var hamburgerBtn: UIButton!
    @IBOutlet weak var beverageBtn: UIButton!
    @IBOutlet weak var dessertBtn: UIButton!
    @IBOutlet weak var beverageCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        hamburgerBtn.layer.cornerRadius = 16
        hamburgerBtn.layer.borderWidth = 1
        hamburgerBtn.layer.borderColor = UIColor.systemGray.cgColor
    
        beverageBtn.layer.cornerRadius = 16
        beverageBtn.backgroundColor = .systemGray
        
        dessertBtn.layer.cornerRadius = 16
        dessertBtn.layer.borderWidth = 1
        dessertBtn.layer.borderColor = UIColor.systemGray.cgColor
        
        beverageCollectionView.delegate = self
        beverageCollectionView.dataSource = self
        beverageCollectionView.register(BeverageCollectionViewCell.self, forCellWithReuseIdentifier: BeverageCollectionViewCell.identifier)
        beverageCollectionView.collectionViewLayout = createLayout()
    }
    
    @IBAction func hamburgerMenuBtn(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
        let storyboard = UIStoryboard(name: "Burger", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "BurgerViewController") as UIViewController
        
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: false, completion: nil)
    }
    
    
    func createLayout() -> UICollectionViewCompositionalLayout {
        
        // item
        let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5), heightDimension: .fractionalHeight(1)))
        
        item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 8, bottom: 16, trailing: 8)
        
        // Group
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.4)), subitem: item, count: 2)

        
        // Section
        let section = NSCollectionLayoutSection(group: group)
        
        section.contentInsets = NSDirectionalEdgeInsets(top: 16, leading: 8, bottom: 8, trailing: 8)
        
        // return
        return UICollectionViewCompositionalLayout(section: section)
    }
}

extension BeverageViewController: UICollectionViewDelegate {

}

extension BeverageViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BeverageCollectionViewCell.identifier, for: indexPath) as! BeverageCollectionViewCell
        
        // 셀 색상
        cell.backgroundColor = .systemGreen
        cell.layer.cornerRadius = 16
        
        return cell
    }
}
