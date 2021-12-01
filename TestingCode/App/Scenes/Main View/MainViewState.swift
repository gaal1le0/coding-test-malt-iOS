//
//  MainViewStates.swift
//  TestingCode
//
//  Created by Martinez, Emanuele on 30/11/21.
//

import Foundation

/// States to configurate the view
enum MainViewState {
    case loadingView
    case loadingTable
    case error(Error)
    case data([TransactionDOM])
}
