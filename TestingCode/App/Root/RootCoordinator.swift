//
//  RootCoordinator.swift
//  TestingCode
//
//  Created by Martinez, Emanuele on 30/11/21.
//

import Foundation
import Networking
import UIKit

/// Root coordinator to manage view
class RootCoordinator {
    
    //MARK: - Dependencies
    var client: APIClient!
    var window: UIWindow!
    var factory: RootFactory?
    var navigationController: UINavigationController?
    
    //MARK: - Inits
    init(_ client: APIClient, window: UIWindow, factory: RootFactory, navigationController: UINavigationController) {
        self.client = client
        self.window = window
        self.factory = factory
        self.navigationController = navigationController
    }
    
    //MARK: - Methods
    func start() {
        // call factory
        guard let vc = factory?.mainView(self, client: client) else { return }
        navigationController?.viewControllers = [vc]
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
    
}

//MARK: - Extending to implement routing of MainView
extension RootCoordinator: MainViewRouter { }
