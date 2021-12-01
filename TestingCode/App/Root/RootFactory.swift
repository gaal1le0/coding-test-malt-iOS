//
//  RootFactory.swift
//  TestingCode
//
//  Created by Martinez, Emanuele on 30/11/21.
//

import Foundation
import UIKit
import Networking

/// Abstract factory to construct all the data staff needed for main view
struct RootFactory {
    
    func mainView(_ router: MainViewRouter, client: APIClient) -> UIViewController {
        let vc = MainViewController(nibName: Constants.kXIBFiles.kMainView, bundle: nil)
        let dataProvider = MainViewDataProvider(client)
        let presenter = MainViewPresenter(vc, router: router, dataProvider: dataProvider)
        vc.presenter = presenter
        return vc
    }
    
}
