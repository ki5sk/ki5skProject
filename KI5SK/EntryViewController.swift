//
//  EntryViewController.swift
//  KI5SK
//
//  Created by JiHoon K on 12/31/23.
//

import UIKit

class EntryViewController: UIViewController {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet var tableView: UITableView!
    @IBOutlet var totalPrice: UILabel!
    
    var burgerVC: BurgerViewController!
    var beverageVC: BeverageViewController!
    var dessertVC: DessertViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        
        burgerVC = UIStoryboard(name: "Burger", bundle: nil).instantiateViewController(withIdentifier: "BurgerViewController") as? BurgerViewController
        beverageVC = UIStoryboard(name: "Beverage", bundle: nil).instantiateViewController(withIdentifier: "BeverageViewController") as? BeverageViewController
        dessertVC = UIStoryboard(name: "Dessert", bundle: nil).instantiateViewController(withIdentifier: "DessertViewController") as? DessertViewController
        
        contentView.addSubview(burgerVC.view)
    }
    
    @IBAction func orderBtn(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Cart", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "CartPaymentViewController") as UIViewController
        
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: false, completion: nil)
    }
}

extension EntryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ModelManage.shared.cart.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "footerCell") as? FooterCell else {return FooterCell()}
        
        let data = ModelManage.shared.cart[indexPath.row]
        cell.data = data
        
        return cell
    }
}

extension EntryViewController {
    @IBAction func tapTopButton(_ sender: UIButton) {
        burgerVC.removeFromParent()
        beverageVC.removeFromParent()
        dessertVC.removeFromParent()
        switch sender.titleLabel?.text {
        case "햄버거 세트":
            contentView.addSubview(burgerVC.view)
        case "음료":
            contentView.addSubview(beverageVC.view)
        case "디저트":
            contentView.addSubview(dessertVC.view)
        default:
            return
        }
    }
}

