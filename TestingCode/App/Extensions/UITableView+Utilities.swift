//
//  UITableView+Utilities.swift
//  TestingCode
//
//  Created by Martinez, Emanuele on 30/11/21.
//

import Foundation
import UIKit

extension UITableView {
    
    /// configurate table view according to an state
    func setBackgound(to state: MainViewState) {
        switch state {
        case .loadingView:
            let spinnerTable = UIActivityIndicatorView(style: .large)
            spinnerTable.tintColor = UIColor.black
            spinnerTable.hidesWhenStopped = true
            spinnerTable.startAnimating()
            self.backgroundView = spinnerTable
        case .error(let message):
            let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
            messageLabel.text = message.localizedDescription
            messageLabel.textColor = .black
            messageLabel.numberOfLines = 0
            messageLabel.textAlignment = .center
            messageLabel.font = UIFont(name: "TrebuchetMS", size: 15)
            messageLabel.sizeToFit()
            self.backgroundView = messageLabel
            self.backgroundView?.backgroundColor = backgroundColor
        case .loadingTable:
            fatalError()
        case .data:
            backgroundView = nil
        }
    }
    
}
