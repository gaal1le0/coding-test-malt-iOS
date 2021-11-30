//
//  MainViewPresenter.swift
//  TestingCode
//
//  Created by Martinez, Emanuele on 30/11/21.
//

import Foundation

class MainViewPresenter {
    
    //MARK: - Dependencies
    var dataProvider: MainViewDataProvider?
    weak var view: MainViewOutputProtocol?
    weak var router: MainViewRouter?
    
    //MARK: - Properties
    var state: MainViewState = .loading {
        didSet {
            view?.update(state)
        }
    }
    
    //MARK: - Inits
    init(_ view: MainViewOutputProtocol, router: MainViewRouter, dataProvider: MainViewDataProvider) {
        self.view = view
        self.router = router
        self.dataProvider = dataProvider
    }
    
    //MARK: - Methods
    
}

//MARK: - Input Protocol's methods
extension MainViewPresenter: MainViewInputProtocol {
    
    func viewWillAppear() {
        
    }
    
}
