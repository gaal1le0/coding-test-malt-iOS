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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter?.viewWillAppear()
    }
    
}

//MARK: Implementing Output Presenter's methods
extension MainViewController: MainViewOutputProtocol {
    
    func update(_ state: MainViewState) {
        switch state {
        case .loading:
            fatalError()
        case .error(let error):
            fatalError()
        case .data(let array):
            fatalError()
        }
    }
    
}
