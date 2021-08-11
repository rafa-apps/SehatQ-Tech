//
//  ProfileRouter.swift
//  SehatQ-Tech
//
//  Created by rahman fad on 08/08/21.
//

import Foundation

class ProfileRouter {
    weak var viewController: ProfileViewController?
    
    func navToPurchaseHistory() {
        let historyDetailView = HistoryBuilder.viewController()
        viewController?.navigationController?.pushViewController(historyDetailView, animated: true)
    }
}
