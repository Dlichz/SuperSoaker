//  DashboardRouter.swift
//  SuperSoaker
//
//  Created by Francisco David Zárate Vásquez on 04/06/23.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class DashboardRouter {
	
    static func createModule() -> UIViewController {
        
        let view = DashboardViewController()
        let presenter = DashboardPresenter()
        let interactor = DashboardInteractor()
        let router = DashboardRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension DashboardRouter: Dashboard_PresenterToRouterProtocol {
    
}
