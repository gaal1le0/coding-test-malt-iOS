//
//  MainTableViewCell.swift
//  TestingCode
//
//  Created by Martinez, Emanuele on 1/12/21.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    //MARK: - Outlets
    @IBOutlet weak var transactionID: UILabel!
    @IBOutlet weak var amount: UILabel!
    @IBOutlet weak var transactionDescription: UILabel!
    @IBOutlet weak var transactionDate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        transactionDescription.numberOfLines = 2
        transactionDescription.lineBreakMode = .byCharWrapping
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
