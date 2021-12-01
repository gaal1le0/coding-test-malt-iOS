//
//  MainViewContracts+Utilities.swift
//  TestingCode
//
//  Created by Martinez, Emanuele on 30/11/21.
//

import Foundation

//MARK: - Comunication from Presenter -> View
protocol MainViewOutputProtocol: AnyObject {
    /// This method send to the view an update with new state and new information
    /// - Parameters:
    ///    - state: Indicate the state of the view containing some useful data. 
    func update(_ state: MainViewState)
}

//MARK: - Comunication from View -> Presenter
protocol MainViewInputProtocol {
    /// This method allows Presenter to load any data and send to the view
    func viewWillAppear()
    /// This method comunicates to Presenter that data need to be updated
    func refreshData()
}

//MARK: - Router to change views
protocol MainViewRouter: AnyObject {
    //TODO: In the future we can implement a navigation to a detail view with all data staff needed to show detail information about transactions
}
