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
    private let refreshControl = UIRefreshControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter?.viewWillAppear()
    }
    
    //MARK: - Methods
    @objc
    func setRefresh() {
        presenter?.refreshData()
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
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Constants.kCells.kMainCell, for: indexPath) as? MainTableViewCell else { return UITableViewCell() }
        cell.transactionID.text = data[indexPath.section].id.description
        cell.transactionDate.text = data[indexPath.section].dateAsString
        cell.amount.text = data[indexPath.section].ammountFormatted
        cell.transactionDescription.text = data[indexPath.section].description
        cell.backgroundColor = data[indexPath.section].type == .expense ? .red.withAlphaComponent(0.5) : .green.withAlphaComponent(0.5)
        return cell
    }
    
}

//MARK: - Implementing setup methods
extension MainViewController {
    
    func setupViews() {
        
        title = "All transactions"
        refreshControl.addTarget(self, action: #selector(setRefresh), for: .valueChanged)
        refreshControl.tintColor = .black
        
        tableView.refreshControl = refreshControl
        tableView.register(UINib(nibName: Constants.kCells.kCellsXIB.kMainCell, bundle: nil), forCellReuseIdentifier: Constants.kCells.kMainCell)
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
            self.refreshControl.endRefreshing()
            self.data = dom
        default:
            print("Table view data is not ready yet")
        }
    }
    
}
