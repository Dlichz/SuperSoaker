//  DashboardPresenter.swift
//  SuperSoaker
//
//  Created by Francisco David Zárate Vásquez on 04/06/23.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class DashboardPresenter: Dashboard_ViewToPresenterProtocol {
    
    weak var view: Dashboard_PresenterToViewProtocol?
    var interactor: Dashboard_PresenterToInteractorProtocol?
    var router: Dashboard_PresenterToRouterProtocol?
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension DashboardPresenter: Dashboard_InteractorToPresenterProtocol {

}
