//
//  ViewController.swift
//  SimpleTableViewApp
//
//  Created by Ashfak Ahamed Alauddeen on 20/05/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib.init(nibName: "TextTableViewCell", bundle: .main), forCellReuseIdentifier: "TextTableViewCell")
        self.tableView.register(UINib.init(nibName: "ImageTableViewCell", bundle: .main), forCellReuseIdentifier: "ImageTableViewCell")
        tableView.rowHeight = UITableView.automaticDimension
//        self.view.backgroundColor = .black
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if (indexPath.row == 0 || indexPath.row == 1 || indexPath.row == 3 || indexPath.row == 5 || indexPath.row == 7 ||  indexPath.row == 9){
            let cell = tableView.dequeueReusableCell(withIdentifier: "TextTableViewCell", for: indexPath) as! TextTableViewCell
            cell.selectionStyle = .none
            return cell
        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ImageTableViewCell", for: indexPath) as! ImageTableViewCell
            cell.setupViewWith()
            cell.view.clipsToBounds = true
            cell.view.layer.cornerRadius = 10
            cell.selectionStyle = .none
            return cell
        }
    }

}

