//  AddAccountRouter.swift
//  SuperSoaker
//
//  Created by Francisco David Zárate Vásquez on 19/06/23.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import UIKit

class AddAccountRouter {
	
    static func createModule() -> UIViewController {
        
        let view = AddAccountViewController()
        let presenter = AddAccountPresenter()
        let interactor = AddAccountInteractor()
        let router = AddAccountRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        return view
    }
}

extension AddAccountRouter: AddAccount_PresenterToRouterProtocol {
    
}
