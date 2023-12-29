
import UIKit

class CartPaymentViewController: UIViewController {
    var carts: [Menu] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CartPaymentViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = CartPaymentCell(style: .default, reuseIdentifier: "cartCell")
        
        return cell
    }
}

extension CartPaymentViewController: UITableViewDelegate {
    
}

extension CartPaymentViewController {
    @IBAction func payButton(_ sender: UIButton) {
        
    }
}



