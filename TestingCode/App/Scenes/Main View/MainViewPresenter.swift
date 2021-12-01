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
    var state: MainViewState = .loadingView {
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
    
    func prepareDOMObject(_ dto: [TransactionDTO]) -> [TransactionDOM] {
        return dto.filter { $0.date.isDateValid }
        .map(TransactionDOM.init)
        .reduce([TransactionDOM](), { acc, item in
            var acc = acc
            if acc.contains(item) {
                let idx = acc.firstIndex(where: { $0.id == item.id })!
                if item.date?.compare(acc[idx].date!) == .orderedAscending {
                    acc[idx] = item
                    return acc
                }
            }
            return acc+[item]
        })
        .sorted(by: { $0.date!.compare($1.date!) == .orderedDescending })
    }
    
    func handleResponseData(_ dto: [TransactionDTO]) {
        state = .data(prepareDOMObject(dto))
    }
    
    func getTransactions() {
        dataProvider?.getTransactions(callback: { result in
            switch result {
            case .success(let transactionsDTO):
                self.handleResponseData(transactionsDTO)
            case .failure(let errorMessage):
                print("--- ERROR HANDLING DECODING: \(errorMessage.localizedDescription)")
                self.state = .error("Data cannot be downloaded, please try again later")
            }
        })
    }
    
}

//MARK: - Input Protocol's methods
extension MainViewPresenter: MainViewInputProtocol {
    
    func viewWillAppear() {
        getTransactions()
    }
    
    func refreshData() {
        state = .loadingTable
        getTransactions()
    }
    
}
