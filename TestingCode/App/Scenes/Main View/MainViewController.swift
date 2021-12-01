//
//  MainViewController.swift
//  TestingCode
//
//  Created by Martinez, Emanuele on 30/11/21.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    
    //MARK: - Dependencies
    var presenter: MainViewPresenter?
    
    //MARK: - Properties
    var data = [TransactionDOM]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    //MARK: - Outlets
    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter?.viewWillAppear()
    }
    
}

//MARK: - Table View Data Source
extension MainViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
}

//MARK: - Implementing setup methods
extension MainViewController {
    
    func setupViews() {
        
        tableView.dataSource = self
        tableView.backgroundColor = .clear
        
    }
    
}

//MARK: Implementing Output Presenter's methods
extension MainViewController: MainViewOutputProtocol {
    
    func update(_ state: MainViewState) {
        tableView.setBackgound(to: state)
        switch state {
        case .data(let dom):
            self.data = dom
        default:
            print("Table view data is not ready yet")
        }
    }
    
}
