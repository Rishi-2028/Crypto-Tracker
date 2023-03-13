//
//  HomeViewModel.swift
//  Crypto-Tracker
//
//  Created by Rishi on 13/03/2023.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var allcoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    private let dataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        addSubscribers()
        }
    
    func addSubscribers() {
        dataService.$allCoins
            .sink { [weak self](returnedCoins) in
                self?.allcoins = returnedCoins
            }
            .store(in: &cancellables)
            
    }
    
    }
    

