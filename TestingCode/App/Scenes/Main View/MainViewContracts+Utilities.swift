//
//  MainViewContracts+Utilities.swift
//  TestingCode
//
//  Created by Martinez, Emanuele on 30/11/21.
//

import Foundation

//MARK: - Comunication from Presenter -> View
protocol MainViewOutputProtocol: AnyObject {
    
}

//MARK: - Comunication from View -> Presenter
protocol MainViewInputProtocol {
    func viewWillAppear()
}

//MARK: - Router to change views
protocol MainViewRouter: AnyObject { }
