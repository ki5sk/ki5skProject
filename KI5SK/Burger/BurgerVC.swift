//
//  ViewController.swift
//  KI5SK
//
//  Created by TeamSpaFiveTeam on 2023/12/27.
//

import UIKit

class BurgerViewController: UIViewController {
    
    //메뉴 데이터 인스턴스
    var bugerData = MenuData()
    
    @IBOutlet weak var hamburgerBtn: UIButton!
    @IBOutlet weak var beverageBtn: UIButton!
    @IBOutlet weak var dessertBtn: UIButton!
    @IBOutlet weak var burgerCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        hamburgerBtn.layer.cornerRadius = 16
        hamburgerBtn.backgroundColor = .systemGray
        
        beverageBtn.layer.cornerRadius = 16
        beverageBtn.layer.borderWidth = 1
        beverageBtn.layer.borderColor = UIColor.systemGray.cgColor
        
        dessertBtn.layer.cornerRadius = 16
        dessertBtn.layer.borderWidth = 1
        dessertBtn.layer.borderColor = UIColor.systemGray.cgColor
        
        burgerCollectionView.delegate = self
        burgerCollectionView.dataSource = self
        burgerCollectionView.collectionViewLayout = createLayout()
    }
    
    @IBAction func beverageMenuBtn(_ sender: Any) {
       
        let storyboard = UIStoryboard(name: "Beverage", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "BeverageViewController") as UIViewController
        
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: false, completion: nil)
    }
    
    @IBAction func dessertMenuBtn(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Dessert", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DessertViewController") as UIViewController
        
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: false, completion: nil)
    }
    
    // 컬렉션뷰 셀 레이아웃
    func createLayout() -> UICollectionViewCompositionalLayout {
        
        // item
        let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
        
        item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 8, bottom: 16, trailing: 8)
        
        // Group
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalWidth(0.5)), subitem: item, count: 2)
        
        // Section
        let section = NSCollectionLayoutSection(group: group)
        
        section.contentInsets = NSDirectionalEdgeInsets(top: 16, leading: 8, bottom: 8, trailing: 8)
        
        return UICollectionViewCompositionalLayout(section: section)
    }
}

extension BurgerViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        //indexPath 넘겨주기
        //temp = indexPath
        
        // 메뉴 옵션 모달 띄우기
        let storyboard = UIStoryboard(name: "DetailOption", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DetailOptionViewController") as UIViewController
        
        present(vc, animated: true, completion: nil)
    }
}

extension BurgerViewController: UICollectionViewDataSource {

    //item 개수
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        bugerData.setMenu()
        return bugerData.bugerMenu.count
    }
    
    //cell 내부 구현부
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BurgerCollectionViewCell.identifier, for: indexPath) as! BurgerCollectionViewCell
    
        bugerData.setMenu()
        
        //버거 메뉴 사진
        cell.BugerMenuImageView.image = UIImage(named: bugerData.bugerMenu[indexPath.row].photo)
        
        //버거 메뉴 이름
        cell.BugerMenuNameLable.text = bugerData.bugerMenu[indexPath.row].name

        //버거 메뉴 가격
        cell.BugerMenuPriceLable.text = "\(bugerData.bugerMenu[indexPath.row].price)원"
        
        // 셀 색상
        cell.backgroundColor = .systemGray6
        cell.layer.cornerRadius = 16
        
        return cell
    }
}

