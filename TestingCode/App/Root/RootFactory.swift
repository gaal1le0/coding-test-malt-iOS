//
//  RootFactory.swift
//  TestingCode
//
//  Created by Martinez, Emanuele on 30/11/21.
//

import Foundation
import UIKit
import Networking

/// Root factory to construct all the data staff needed for main view
struct RootFactory {
    
    func mainView(_ router: MainViewRouter, client: APIClient) -> UIViewController {
        let vc = RootFactory.getStoryboard(Constants.kStorybords.kMain).instantiateViewController(withIdentifier: MainViewController.self.description()) as! MainViewController
        let dataProvider = MainViewDataProvider(client)
        let presenter = MainViewPresenter(vc, router: router, dataProvider: dataProvider)
        vc.presenter = presenter
        return vc
    }
    
    /// Function that get storyboard based on their names
    static func getStoryboard(_ name: String) -> UIStoryboard {
        return UIStoryboard(name: name, bundle: nil)
    }
    
}
