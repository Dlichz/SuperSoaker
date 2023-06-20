//  AddAccountPresenter.swift
//  SuperSoaker
//
//  Created by Francisco David Zárate Vásquez on 19/06/23.
//  
//  ViperTemplate v.0.0.1 - (2023, NS-Bionick Development Team)

import Foundation

class AddAccountPresenter: AddAccount_ViewToPresenterProtocol {
    
    weak var view: AddAccount_PresenterToViewProtocol?
    var interactor: AddAccount_PresenterToInteractorProtocol?
    var router: AddAccount_PresenterToRouterProtocol?
    
}

// MARK: - I N T E R A C T O R · T O · P R E S E N T E R
extension AddAccountPresenter: AddAccount_InteractorToPresenterProtocol {

}
